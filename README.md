# utl_bivariate_outliers
Identify bivariate outliers

    ```    ```
    ```    ```
    ```  T1006770 CrossValidate: Visualizing suspicious bivariate observations(outliers) with 2 dimensional boxplots  ```
    ```    ```
    ```   see output (or run code)  ```
    ```   https://www.dropbox.com/s/7n4nt5ak8np15ix/bagplot.pdf?dl=0  ```
    ```    ```
    ```    WORKING CODE  ```
    ```    ```
    ```       have<-read_sas("d:/sd1/have.sas7bdat");  ```
    ```       pdf("d:/pdf/bagplot.pdf");  ```
    ```       bagplot(have,pch=16,cex=2);  ```
    ```       import r=want data=wrk.want;  ```
    ```    ```
    ```  (1) P. J. Rousseeuw, I. Ruts, J. W. Tukey (1999): The bagplot: a bivariate boxplot,  ```
    ```  The American Statistician, vol. 53, no. 4, 382–387  ```
    ```    ```
    ```    ```
    ```  crossValidated  ```
    ```  https://stats.stackexchange.com/questions/53227/test-for-bivariate-outliers  ```
    ```    ```
    ```  profile user603  ```
    ```  https://stats.stackexchange.com/users/603/user603  ```
    ```    ```
    ```    ```
    ```  HAVE  ```
    ```  ====  ```
    ```    ```
    ```  Up to 40 obs SD1.HAVE total obs=301  ```
    ```    ```
    ```  Obs       X       Y  ```
    ```    ```
    ```    1     -12      73  ```
    ```    2     -35     110  ```
    ```    3      56     107  ```
    ```    4      95     108  ```
    ```    5    -215    -201  ```
    ```    6       6    -117  ```
    ```    ```
    ```    7     -373     68   Outlier?  ```
    ```    ```
    ```  117      77      10  ```
    ```  118     -79     212  ```
    ```  119       0     115  ```
    ```  120     -22     -41  ```
    ```    ```
    ```  222      350    350    Outlier?  ```
    ```    ```
    ```  297      24     123  ```
    ```  298     127     149  ```
    ```  299     152       0  ```
    ```  300     104      10  ```
    ```    ```
    ```    ```
    ```    ```
    ```    ```
    ```  WANT  ```
    ```  ====  ```
    ```    ```
    ```  The WPS System  ```
    ```    ```
    ```  Up to 40 obs WANT total obs=2  ```
    ```    ```
    ```  Obs      X      Y  ```
    ```    ```
    ```   1     -373     68  ```
    ```   2      350    350  ```
    ```    ```
    ```   This plot (dramatization)  ```
    ```    ```
    ```   +400|                                 suspicious  ```
    ```       +             ************           @  ```
    ```       |          ****     O    ***  ```
    ```       +        ***    O O OO      **  ```
    ```       |      ***    O    O O       ***  ```
    ```       +     **       O O             **  ```
    ```       |     *       O   ***           **  ```
    ```       +    **        **     **     O   *  ```
    ```       |   **       ***    O   **       **  ```
    ```       +   *  O    O*       O   **  O    *  ```
    ```       |   *       ** O XX  O    *       *  ```
    ```       +   *       *    XX  O O  *   O   *  ```
    ```       |   *       * OO   O  O   *       *  ```
    ```       +   *        *  O        **  O    *  ```
    ```       |   **        **    O   **       **  ```
    ```       +    **        **     ** O       *  ```
    ```       |     *           ***           **  ```
    ```       +     **       O        O       **  ```
    ```       |      ***       O O         ***  ```
    ```       +        ***         O      **  ```
    ```       |          ****          ***  ```
    ```       +             ************  ```
    ```       |     @ suspicious  ```
    ```   -400+  ```
    ```       -+--------+-------+---------+---------+  ```
    ```      -400     -200      0       +200      +400  ```
    ```    ```
    ```    ```
    ```  You can read this plot as you would read a boxplot: the xx central region is  ```
    ```  the bivariate median, the inner circle 'the bag' is the bivariate IQR (interquartile range)  ```
    ```  (it contains the 50% most central points) and the outer region 'the fence'  ```
    ```  contains the points that are further away (but not enough that they would be considered outliers.)  ```
    ```    ```
    ```    ```
    ```  (1) P. J. Rousseeuw, I. Ruts, J. W. Tukey (1999): The bagplot: a bivariate boxplot,  ```
    ```  The American Statistician, vol. 53, no. 4, 382–387  ```
    ```    ```
