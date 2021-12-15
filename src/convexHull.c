#include "convexHull.h"
#include <math.h>

int righturn(double x1, double x2, double x3, double y1, double y2, double y3 ){
    double ind = (x1-x3)*(y2-y3) - (x2-x3)*(y1-y3);
    return ind>pow(10,-15);
}

static int compare_x(const void *a_v, const void *b_v)
{

    GLfloat* a = *(GLfloat(*)[2]) a_v;
    GLfloat* b = *(GLfloat(*)[2]) b_v;
    double diff = (double) b[0]- (double) a[0];
    if (diff<0.0){
        return 1;
    }
    else {
        return -1;
    }
}

int coordon(GLsizei nPoints, GLfloat L[][2]){




    qsort(L, nPoints, sizeof(GLfloat)*2, compare_x);




    GLfloat (*Lupp)[2] = malloc(sizeof(Lupp[0])*nPoints);
    GLfloat (*Llow)[2] = malloc(sizeof(Llow[0])*nPoints);

    Lupp[0][0] = L[0][0];
    Lupp[0][1] = L[0][1];
    Lupp[1][0] = L[1][0];
    Lupp[1][1] = L[1][1];

    int numbupp = 2;
    int ind;
    for (int i =2;i<nPoints;i++){
        Lupp[numbupp][0] = L[i][0];
        Lupp[numbupp][1] = L[i][1];

        ind =  righturn(Lupp[numbupp][0], Lupp[numbupp-1][0], Lupp[numbupp-2][0], Lupp[numbupp][1], Lupp[numbupp-1][1], Lupp[numbupp-2][1] );
        numbupp++;
        while (numbupp>2 && ind){
            Lupp[numbupp-2][0] = Lupp[numbupp-1][0] ;
            Lupp[numbupp-2][1] = Lupp[numbupp-1][1] ;
            numbupp--;
            ind =  righturn(Lupp[numbupp-1][0], Lupp[numbupp-2][0], Lupp[numbupp-3][0], Lupp[numbupp-1][1], Lupp[numbupp-2][1], Lupp[numbupp-3][1] );
        }
    }

    Llow[0][0] = L[nPoints-1][0];
    Llow[0][1] = L[nPoints-1][1];
    Llow[1][0] = L[nPoints-2][0];
    Llow[1][1] = L[nPoints-2][1];

    int numblow = 2;

    for (int i =nPoints-3;i>-1;i--){
        Llow[numblow][0] = L[i][0];
        Llow[numblow][1] = L[i][1];

        ind =  righturn(Llow[numblow][0], Llow[numblow-1][0], Llow[numblow-2][0], Llow[numblow][1], Llow[numblow-1][1], Llow[numblow-2][1] );
        numblow++;
        while (numblow>2 && ind){
            Llow[numblow-2][0] = Llow[numblow-1][0] ;
            Llow[numblow-2][1] = Llow[numblow-1][1] ;
            numblow--;
            ind =  righturn(Llow[numblow-1][0], Llow[numblow-2][0], Llow[numblow-3][0], Llow[numblow-1][1], Llow[numblow-2][1], Llow[numblow-3][1] );
        }
    }


    for (int j = 0; j<(numblow+numbupp);j++){
        if (j<numbupp){
            L[j][0] = Lupp[j][0];
            L[j][1] = Lupp[j][1];

            //printf("x%d : %f \n", j, Lupp[j][0]);
            //printf("y%d : %f \n", j, Lupp[j][1]);
        }
        else{
            L[j][0] = Llow[j-numbupp][0];
            L[j][1] = Llow[j-numbupp][1];
        }
    }
    printf("\nnumbupp %d\n", numbupp);
    printf("\nnumblow %d\n", numblow);
    free(Llow);
    free(Lupp);
    int numb = numblow+numbupp;
    return numb;
}
