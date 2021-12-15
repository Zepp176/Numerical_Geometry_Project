#include "inputs.h"
#include "kdtree.h"
#include "convexHull.h"
#include <time.h>


#define SHOW 1

int main()
{

	int seed = (int) time(NULL);
	srand(seed);

	const GLsizei nPoints = 10000;
	GLfloat (*coord)[2] = malloc(sizeof(coord[0])*nPoints);
#if 0 // put 1 for random polygon
	random_polygon(coord, nPoints, 4);
#else
	random_points(coord, nPoints);
#endif

	double x_low = coord[0][0], x_high = coord[0][0];
	double y_low = coord[0][1], y_high = coord[0][1];
	for (int i = 0; i < nPoints; i++) {
		if (coord[i][0] < x_low) {x_low = coord[i][0];}
		if (coord[i][0] > x_high) {x_high = coord[i][0];}
		if (coord[i][1] < y_low) {y_low = coord[i][1];}
		if (coord[i][1] > y_high) {y_high = coord[i][1];}
	}
	x_low -= 0.1*(x_high - x_low);
	x_high += 0.1*(x_high - x_low);
	y_low -= 0.1*(y_high - y_low);
	y_high += 0.1*(y_high - y_low);

	time_t tic = time(NULL);
	kd_node *head = kd_tree(coord, 0, nPoints, 0);
	time_t tac = time(NULL);

	double old_time;
	int depth = 0;
	int depth_max = compute_max_depth(head);
	printf("%d\n", depth_max);

	if (SHOW) {
		bov_window_t* window = bov_window_new(800, 800, "k-d tree");
		bov_window_set_color(window, (GLfloat[]){1.0f, 1.0f, 1.0f, 1.0f});

		bov_points_t *coordDraw = bov_points_new(coord, nPoints, GL_STATIC_DRAW);
		bov_points_set_color(coordDraw, (GLfloat[4]) {0.0, 0.0, 0.0, 0.5});
		bov_points_set_outline_color(coordDraw, (GLfloat[4]) {0.3, 0.12, 0.0, 0.25});

		old_time = bov_window_get_time(window);

		while(!bov_window_should_close(window)){
			draw_frame(window, x_low, x_high, y_low, y_high);

			bov_points_set_width(coordDraw, 0.005);

			if (bov_window_get_time(window) - old_time > 0.5) {
				old_time = bov_window_get_time(window);
				depth += 1;
				if (depth > depth_max) {depth = 0;}
			}

			bov_points_draw(window, coordDraw, 0, nPoints);
			draw_kd_tree(head, window, x_low, x_high, y_low, y_high, depth, depth_max);

			bov_window_update(window);
		}

		bov_points_delete(coordDraw);
		free(coord);
		bov_window_delete(window);
	}

	printf("elapsed time : %ld seconds\n", tac-tic);

	free_kd_tree(head);
	
	
	
	
	

	return EXIT_SUCCESS;
}



/*
int main() // FOR CONVEX HULL
{
	// give a bit of entropy for the seed of rand()
	// or it will always be the same sequence
	int seed = (int) time(NULL);
	srand(seed);

	// we print the seed so you can get the distribution of points back
	printf("seed=%d\n", seed);

	bov_window_t* window = bov_window_new(800, 800, "My first BOV program");
	bov_window_set_color(window, (GLfloat[]){0.9f, 0.85f, 0.8f, 1.0f});

	const GLsizei nPoints = 1000000;
	GLfloat (*coord)[2] = malloc(sizeof(coord[0])*nPoints);
    #if 0 // put 1 for random polygon
        random_polygon(coord, nPoints, 4);
    #else
        random_points(coord, nPoints);
    #endif

    GLfloat (*L)[2] = malloc(sizeof(L)*(nPoints));

    for (int j = 0; j<nPoints;j++){
        L[j][0] = coord[j][0];
        L[j][1] = coord[j][1];
    }
    int a1 = coordon(nPoints, L);
    int numb = a1;
    printf("%d \n", numb);







	bov_points_t *coordDraw = bov_points_new(coord, nPoints, GL_STATIC_DRAW);
    bov_points_t *cool = bov_points_new(L, numb, GL_STATIC_DRAW);
	bov_points_set_color(coordDraw, (GLfloat[4]) {0.0, 0.0, 0.0, 1.0});
	bov_points_set_outline_color(coordDraw, (GLfloat[4]) {0.3, 0.12, 0.0, 0.25});

    bov_points_set_color(cool, (GLfloat[4]) {0.0, 0.0, 0.0, 1.0});
    bov_points_set_outline_color(cool, (GLfloat[4]) {1.0, 0.0, 0.0, 0.0});


    double old_time;
    old_time = bov_window_get_time(window);
    int count = 0;
	while(!bov_window_should_close(window)){
		bov_points_set_width(coordDraw, 0.003);
		bov_points_set_outline_width(coordDraw, 0.002);

        bov_points_set_width(cool, 0.003);
        bov_points_set_outline_width(cool, 0.002);


        if (bov_window_get_time(window) - old_time > 1) {
            old_time = bov_window_get_time(window);
            if(count<numb) {
                count++;
            }
        }
        bov_line_strip_draw(window, cool, 0, count);
        bov_points_set_width(cool, 0.01);
        bov_points_draw(window, cool, 0, count);

		// points_set_width(coordDraw, 0.003);
		bov_points_set_outline_width(coordDraw, -1.);
		bov_points_draw(window, coordDraw, 0, nPoints);




		bov_window_update(window);
	}

	bov_points_delete(coordDraw);
	free(coord);
	bov_window_delete(window);

	return EXIT_SUCCESS;
}

*/
