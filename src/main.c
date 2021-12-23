#include "inputs.h"
#include "kdtree.h"
#include "convexHull.h"
#include <time.h>


#define SHOW_ANIM 1 // 1 to show the animations, 0 to disable the animations
#define ALGO_SELECTION 2 // 1 for k-dtree algorithm, 2 for convex hull algorithm
#define ANIM_KD_TREE 1 // 1 for the first animation, 2 for the second animation for the k-d tree
#define STEP_CONVEX_HULL 0 // 1 to show the evolution of the algorithm while running, 0 to have directly the result

int main()
{

	float anim_rate = 0.5;
	int seed = (int) time(NULL);
	srand(seed);

	// Random points are created
	const GLsizei nPoints = 1000;
	GLfloat (*coord)[2] = malloc(sizeof(coord[0])*nPoints);
	random_points(coord, nPoints);

    if (ALGO_SELECTION == 1) {

		// We find the max and the min
		double x_low = coord[0][0], x_high = coord[0][0];
		double y_low = coord[0][1], y_high = coord[0][1];
		for (int i = 0; i < nPoints; i++) {
			if (coord[i][0] < x_low) {x_low = coord[i][0];}
			if (coord[i][0] > x_high) {x_high = coord[i][0];}
			if (coord[i][1] < y_low) {y_low = coord[i][1];}
			if (coord[i][1] > y_high) {y_high = coord[i][1];}
		}

		// The limits of the frame are set
		x_low -= 0.1*(x_high - x_low);
		x_high += 0.1*(x_high - x_low);
		y_low -= 0.1*(y_high - y_low);
		y_high += 0.1*(y_high - y_low);

		// Here the k-d tree is created
		time_t tic = time(NULL);
		kd_node *head = kd_tree(coord, 0, nPoints, 0);
		time_t tac = time(NULL);

		double old_time;
		int depth = 0;
		int depth_max = compute_max_depth(head);
		printf("%d\n", depth_max);

		// The animation
		if (SHOW_ANIM) {
			bov_window_t* window = bov_window_new(800, 800, "k-d tree");
			bov_window_set_color(window, (GLfloat[]){1.0f, 1.0f, 1.0f, 1.0f});

			bov_points_t *coordDraw = bov_points_new(coord, nPoints, GL_STATIC_DRAW);
			bov_points_set_color(coordDraw, (GLfloat[4]) {0.0, 0.0, 0.0, 0.5});
			bov_points_set_outline_color(coordDraw, (GLfloat[4]) {0.3, 0.12, 0.0, 0.25});

			old_time = bov_window_get_time(window);

			while(!bov_window_should_close(window)){

				if (bov_window_get_time(window) - old_time > 0.5) {
					old_time = bov_window_get_time(window);
					depth += 1;
					if (depth > depth_max) {depth = 0;}
				}

				draw_frame(window, x_low, x_high, y_low, y_high);
				bov_points_set_width(coordDraw, 0.005);
				bov_points_draw(window, coordDraw, 0, nPoints);
				draw_kd_tree(head, window, x_low, x_high, y_low, y_high, depth, depth_max, ANIM_KD_TREE);

				bov_window_update(window);
			}

			bov_points_delete(coordDraw);
			free(coord);
			bov_window_delete(window);

		}

		printf("elapsed time : %ld seconds\n", tac-tic);

		free_kd_tree(head);
	}

    if (ALGO_SELECTION == 2) {


        GLfloat (*L)[2] = malloc(sizeof(L)*(nPoints));



        for (int j = 0; j<nPoints;j++){
            L[j][0] = coord[j][0];
            L[j][1] = coord[j][1];
        }


        if (!SHOW_ANIM){
            clock_t start = clock();
            int a1 = coordon(nPoints, L);
            clock_t end = clock();
            float seconds = (float)(end - start) / CLOCKS_PER_SEC;
            printf("%f \n", seconds);
        }

        if (SHOW_ANIM) {
            if (STEP_CONVEX_HULL) {
                GLfloat(*step)[2] = malloc(sizeof(step) * (nPoints) * nPoints);
                int *a1 = coordonStep(nPoints, L, step);
                int numb = a1[0];
                int nbstep = a1[1];

                double time;
                if (nPoints > 70) {
                    time = 0.00001;
                } else if (nPoints > 30 && nPoints <= 70) {
                    time = 0.1;
                } else {
                    time = 0.3;
                }

                bov_window_t *window = bov_window_new(800, 800, "My first BOV program");
                bov_window_set_color(window, (GLfloat[]) {0.9f, 0.85f, 0.8f, 1.0f});


                bov_points_t *coordDraw = bov_points_new(coord, nPoints, GL_STATIC_DRAW);
                bov_points_set_color(coordDraw, (GLfloat[4]) {0.0, 0.0, 0.0, 1.0});
                bov_points_set_outline_color(coordDraw, (GLfloat[4]) {0.3, 0.12, 0.0, 0.25});


                GLfloat(*currlist)[2] = malloc(sizeof(currlist) * (nPoints));
                int numbList = 2;
                currlist[0][0] = step[0][0];
                currlist[0][1] = step[0][1];
                currlist[1][0] = step[1][0];
                currlist[1][1] = step[1][1];

                bov_points_t *cool1 = bov_points_new(currlist, numbList, GL_STATIC_DRAW);
                bov_points_set_color(cool1, (GLfloat[4]) {0.0, 0.0, 0.0, 1.0});
                bov_points_set_outline_color(cool1, (GLfloat[4]) {1.0, 0.0, 0.0, 0.0});


                double old_time;
                old_time = bov_window_get_time(window);
                int count = 2;


                while (!bov_window_should_close(window)) {
                    bov_points_set_width(coordDraw, 0.003);
                    bov_points_set_outline_width(coordDraw, 0.002);

                    if (bov_window_get_time(window) - old_time > time) {
                        old_time = bov_window_get_time(window);
                        if (count < nbstep) {
                            if (currlist[numbList - 1][0] == step[count][0]) {
                                currlist[numbList - 2][0] = currlist[numbList - 1][0];
                                currlist[numbList - 2][1] = currlist[numbList - 1][1];
                                bov_points_delete(cool1);
                                numbList--;
                                cool1 = bov_points_new(currlist, numbList, GL_STATIC_DRAW);
                            } else {
                                currlist[numbList][0] = step[count][0];
                                currlist[numbList][1] = step[count][1];
                                bov_points_delete(cool1);
                                numbList++;
                                cool1 = bov_points_new(currlist, numbList, GL_STATIC_DRAW);
                            }
                            count++;
                        }
                    }
                    bov_points_set_color(cool1, (GLfloat[4]) {0.0, 0.0, 0.0, 1.0});
                    bov_points_set_outline_color(cool1, (GLfloat[4]) {1.0, 0.0, 0.0, 0.0});


                    bov_points_set_width(cool1, 0.003);
                    bov_points_set_outline_width(cool1, 0.002);

                    bov_line_strip_draw(window, cool1, 0, count);
                    bov_points_set_width(cool1, 0.01);
                    bov_points_draw(window, cool1, 0, count);

                    bov_points_set_outline_width(coordDraw, -1.);
                    bov_points_draw(window, coordDraw, 0, nPoints);


                    bov_window_update(window);
                }

                free(currlist);
                free(step);
                bov_points_delete(coordDraw);
                bov_points_delete(cool1);
                bov_window_delete(window);
            }

            if (!STEP_CONVEX_HULL) {
                int numb = coordon(nPoints, L);
                bov_window_t *window = bov_window_new(800, 800, "My first BOV program");
                bov_window_set_color(window, (GLfloat[]) {0.9f, 0.85f, 0.8f, 1.0f});

                bov_points_t *coordDraw = bov_points_new(coord, nPoints, GL_STATIC_DRAW);
                bov_points_t *cool1 = bov_points_new(L, numb, GL_STATIC_DRAW);
                bov_points_set_color(coordDraw, (GLfloat[4]) {0.0, 0.0, 0.0, 1.0});
                bov_points_set_outline_color(coordDraw, (GLfloat[4]) {0.3, 0.12, 0.0, 0.25});


                bov_points_set_color(cool1, (GLfloat[4]) {0.0, 0.0, 0.0, 1.0});
                bov_points_set_outline_color(cool1, (GLfloat[4]) {1.0, 0.0, 0.0, 0.0});

                while (!bov_window_should_close(window)) {

                    bov_points_set_width(coordDraw, 0.003);
                    bov_points_set_outline_width(coordDraw, 0.002);


                    bov_points_set_width(cool1, 0.003);
                    bov_points_set_outline_width(cool1, 0.002);
                    bov_line_strip_draw(window, cool1, 0, numb);


                    bov_points_set_outline_width(coordDraw, -1.);
                    bov_points_draw(window, coordDraw, 0, nPoints);

                    bov_points_set_width(cool1, 0.01);
                    bov_points_draw(window, cool1, 0, numb);

                    bov_window_update(window);


                }
                bov_points_delete(coordDraw);
                bov_points_delete(cool1);
                bov_window_delete(window);

            }
        }

        free(coord);
        free(L);
    }

	return EXIT_SUCCESS;
}
