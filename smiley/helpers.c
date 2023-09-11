#include "helpers.h"

void colorize(int height, int width, RGBTRIPLE image[height][width])
{
    // Change all black pixels to a color of your choosing
    for (int i = 0; i < height; i++)
    {
        for (int j = 0; j < width; j++)
        {
            if (image[i][j].rgbtBlue == 0 && image[i][j].rgbtGreen == 0 && image[i][j].rgbtRed == 0)
            {
                image[i][j].rgbtBlue = 96;
                image[i][j].rgbtGreen = 170;
                image[i][j].rgbtRed = 243;
            }
            if (image[i][j].rgbtBlue == 255 && image[i][j].rgbtGreen == 255 && image[i][j].rgbtRed == 255)
            {
                image[i][j].rgbtBlue = 121;
                image[i][j].rgbtGreen = 91;
                image[i][j].rgbtRed = 29;
            }
        }
    }
}
