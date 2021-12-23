#include "kdtree.h"
#include <time.h>
#include <math.h>

#define DISPLAY_ONE 1

int cmpfct_x(const void *a, const void *b) {
    if (((GLfloat*) a)[0] < ((GLfloat*) b)[0]) {return -1;}
    else {return 1;}
}

int cmpfct_y(const void *a, const void *b) {
    if (((GLfloat*) a)[1] < ((GLfloat*) b)[1]) {return -1;}
    else {return 1;}
}

kd_node *kd_tree(GLfloat coord[][2], int start, int end, int depth) {
    if (end <= start) {return NULL;}

    int axis = depth % 2;

    int n = end - start;
    if (axis == 0) {
        qsort(&coord[start], n, sizeof(coord[0]), cmpfct_x);
    } else {
        qsort(&coord[start], n, sizeof(coord[0]), cmpfct_y);
    }

    int median = start + (n/2);

    kd_node *node = malloc(sizeof(kd_node));
    node->x = coord[median][0];
    node->y = coord[median][1];
    node->depth = depth;

    node->left = kd_tree(coord, start, median, depth+1);
    node->right = kd_tree(coord, median+1, end, depth+1);

    return node;
}

void free_kd_tree(kd_node *head) {
    if (head == NULL) {return;}

    free_kd_tree(head->left);
    free_kd_tree(head->right);
    free(head);
}

void draw_kd_tree(kd_node *head, bov_window_t *window, double x_low, double x_high, double y_low, double y_high, int depth_max, int depth_color, int anim) {
    if (head == NULL) {return;}
    if (head->depth >= depth_max) {return;}

    GLfloat (*line)[2] = malloc(sizeof(line[0])*2);
    if (head->depth % 2 == 0) {
        line[0][0] = head->x;
        line[1][0] = head->x;
        line[0][1] = y_low;
        line[1][1] = y_high;
    } else {
        line[0][1] = head->y;
        line[1][1] = head->y;
        line[0][0] = x_low;
        line[1][0] = x_high;
    }
    bov_points_t *coordDraw = bov_points_new(line, 2, GL_STATIC_DRAW);

    GLfloat color[4];
    nice_colormap(color, ((float) head->depth)/(depth_color-1));

    if (anim == 2) {bov_points_set_width(coordDraw, 0.004);}
	else {bov_points_set_width(coordDraw, 0.002);}
    bov_points_set_color(coordDraw, color);
    bov_lines_draw(window, coordDraw, 0, 2);

    bov_points_delete(coordDraw);
    free(line);

    if (anim == 2) {
        if (head->depth % 4 == 0) {draw_kd_tree(head->left, window, x_low, head->x, y_low, y_high, depth_max, depth_color, anim);}
        if (head->depth % 4 == 2) {draw_kd_tree(head->right, window, head->x, x_high, y_low, y_high, depth_max, depth_color, anim);}
        if (head->depth % 4 == 1) {draw_kd_tree(head->left, window, x_low, x_high, y_low, head->y, depth_max, depth_color, anim);}
        if (head->depth % 4 == 3) {draw_kd_tree(head->right, window, x_low, x_high, head->y, y_high, depth_max, depth_color, anim);}
    }
    else {
        if (head->depth % 2 == 0) {
            draw_kd_tree(head->left, window, x_low, head->x, y_low, y_high, depth_max, depth_color, anim);
            draw_kd_tree(head->right, window, head->x, x_high, y_low, y_high, depth_max, depth_color, anim);
        } else {
            draw_kd_tree(head->left, window, x_low, x_high, y_low, head->y, depth_max, depth_color, anim);
            draw_kd_tree(head->right, window, x_low, x_high, head->y, y_high, depth_max, depth_color, anim);
        }
    }
}

void draw_frame(bov_window_t *window, double x_low, double x_high, double y_low, double y_high) {
    GLfloat (*lines)[2] = malloc(sizeof(lines[0])*4);
    lines[0][0] = x_low;
    lines[0][1] = y_low;
    lines[1][0] = x_low;
    lines[1][1] = y_high;
    lines[2][0] = x_high;
    lines[2][1] = y_high;
    lines[3][0] = x_high;
    lines[3][1] = y_low;
    bov_points_t *coordDraw = bov_points_new(lines, 4, GL_STATIC_DRAW);
	bov_points_set_width(coordDraw, 0.002);
    bov_line_loop_draw(window, coordDraw, 0, 4);
    bov_points_delete(coordDraw);
    free(lines);
}

int compute_max_depth(kd_node *head) {
    if (head->left == NULL && head->right == NULL) {return head->depth + 1;}

    int max_left = -1;
    if (head->left != NULL) {
        max_left = compute_max_depth(head->left);
    }

    int max_right = -1;
    if (head->right != NULL) {
        max_right = compute_max_depth(head->right);
    }

    if (max_left > max_right) {return max_left;}
    else {return max_right;}
}

void nice_colormap(float color[4], float a)
{
    a *= 2;

    if (a < 1.0) {
        color[0] = 0.0;
        color[1] = a;
        color[2] = 1.0-a;
        color[3] = 1.0;
    } else {
        a -= 1;
        color[0] = a;
        color[1] = 1.0-a;
        color[2] = 0.0;
        color[3] = 1.0;
    }
}
