Survival Analysis:
Survival analysis lets you analyze the rates of occurrence of events over time, without assuming the rates are constant.
Generally, survival analysis lets you model the time until an event occurs,1 or compare the time-to-event between different groups, 
or how time-to-event correlates with quantitative variables.

Packages used in R:
The R package named survival is used to carry out survival analysis. 
This package contains the function Surv() which takes the input data as a R formula and 
creates a survival object among the chosen variables for analysis. 
Then we use the function survfit() to create a plot for the analysis.

Dataset used is:
clinical data _CGGA.mRNAseq_693_clinical.20200506.txt


Interpretation:
1. Survival checked on the basis of gender
![image](https://user-images.githubusercontent.com/112052476/199166030-604c04fe-f9fe-4953-bbdb-651e5a9ee463.png)


2. Survival checked on the basis of age
![image](https://user-images.githubusercontent.com/112052476/199166409-e3ae6f59-aea4-4896-8d9e-c0a015fe4d1b.png)


3. Survival checked on the basis of gender with age
![image](https://user-images.githubusercontent.com/112052476/199166661-bd4006eb-b1ab-43c9-a51e-cacf3e91d505.png)


4. histology with respect to gender and stage of breast cancer according to gender:
![image](https://user-images.githubusercontent.com/112052476/199166872-2dc28192-258d-471a-93f7-4d883d472e61.png)


5. With respect to Grade
![image](https://user-images.githubusercontent.com/112052476/199167111-dfccc13e-9a7b-4674-8a07-655e79200824.png)

