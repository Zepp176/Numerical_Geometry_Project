#include "BOV.h"

typedef struct kd_node kd_node;
struct kd_node {
    double x; double y;
    int depth;
    kd_node* left;
    kd_node* right;
};

kd_node *kd_tree(GLfloat coord[][2], int start, int end, int depth);
void free_kd_tree(kd_node *head);
void draw_kd_tree(kd_node *head, bov_window_t *window, double x_low, double x_high, double y_low, double y_high, int depth_max, int depth_color, int anim);
void draw_frame(bov_window_t *window, double x_low, double x_high, double y_low, double y_high);
int compute_max_depth(kd_node *head);
void nice_colormap(float color[4], float a);
