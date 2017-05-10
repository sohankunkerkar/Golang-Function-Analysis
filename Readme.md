## CSC-630 Master's Independent Study<br>
### Project Title:<br>
<b>‘Community Repair’: Analyzing and Repairing Out-of-Date Crowd Documentation.</b><br>
After initial proof of concept, we realized the need and scope for analyzing the performance changes and recommend updates for golang language. However, there are only 20,000 odd posts available on Stackoverflow site which in terms of coverage is very low. Hence we decided to understand the behavior of golang packages. Similar to java which has JavaDoc,golang has Godoc which extracts and generates documentation for Go programs.The given project divided into several phases and the results we accomplished after every phase would be analyzed to take prompt decisions for future milestones.<br>
<b>Project phases are listed below:</b><br>
<b>1.</b> Extract fucntions from godoc package <br>
<b>2.</b> Fetch the count of Stackoverflow posts for given fucntions <br>
<b>3.</b> TreeMap Structure to understand the coverage across Stackoverflow posts <br>
<b>4.</b> Count of Stackoverflow posts where usage of certain functions are not accurate<br>
### 1. First Phase of the Project
#### GO program to extract fucntions from godoc package</b><br>
In this phase, we need to understand the Godoc packages and then extract the functions to see the methods and types. It will be helpful in future phases of the project for analysis purpose.<br> 
<b>Please refer the following instructions to setup an environment to run go utilty<br></b>
Install latest golang version into your systems(go 1.8) and set the approriate $GOPATH in order to run the golang program properly.Create one folder and keep all the files mentioned above including godeps folder to install package dependencies.<br>
For some reason it doesn't work then use following command to install the packages:

    go get -u <package name>
          
On Machine use following command to run the package and extract the functions:

    go run <file name> <package name> 
for e.g. if we want to extract functions from <b>OS</b> package then use following commad:

    go run printFunction.go os
       
for third party package use entire path:

    go run printFunction.go golang.org/x/tools/go/ast/astutil
<b>Following diagram depicts the clear picture about the procedure used for this phase:</b><br>    
![alt text](https://github.com/alt-code/CommunityRepair/blob/master/Sohan/godocFetchfunction/images/Project1.jpg "Picture-1")
<br>
### 2. Second Phase of the Project<br>
#### Java program to fetch the count of stackoverflow posts for given fucntions of GODOC package<br>
The functions extracted from Godoc packages are then used for Indexing Stackoverflow posts.For implementing this feature, we used the dump of Stackoverflow database and indexed it using apache Solr platform.For getting the count of posts for a given function, a java utility build which will write the result into one excel sheet.<br>
Use the following command to run the java utility:

    java -jar GoProject.jar
<b>Picture depicts the clear information about the procedure used for this phase:</b><br>
![alt text](https://github.com/alt-code/CommunityRepair/blob/master/Sohan/godocFetchfunction/images/Project2.jpg "Picture-2")
<br>
### 3. Third Phase of the Project
#### Creating a TreeMap Structure to understand the coverage of functions across Stackoverflow posts<br>
<b>a. Zoomable treemap structure for StackoverFlow Posts which are indexed with Godoc bult-in package functions.</b><br>
 Analysis of 5 built-in golang packages (<b>OS,FMT,NET,BUFIO,HTTP</b>)<br>
![alt text](https://github.com/alt-code/CommunityRepair/blob/master/Sohan/godocFetchfunction/images/builtin.png "TreeMap-1")
<br>
[click here](https://public.tableau.com/profile/publish/StackoverflowPostsIndexingforGodocPackage/Sheet1#!/publish-confirm)
<br>
<b>b. Zoomable treemap structure for StackoverFlow Posts which are indexed with Third party Godoc package functions.</b><br>
 Analysis of only 5 third-party golang packages (<b>NET/HTML,WEBSOCKET,OAUTH2,CONTEXT,MUX</b>)<br>
![alt text](https://github.com/alt-code/CommunityRepair/blob/master/Sohan/godocFetchfunction/images/third.png "TreeMap-2")
<br>
[click here](https://public.tableau.com/profile/sohan.kunkerkar#!/vizhome/StackOverflowPostsIndexingforThirdPartyGodocPackages/Sheet1)
<br>
### 4. Fourth Phase of the Project
#### Getting the count of Stackoverflow posts where usage of certain functions in a program are not accurate.
There are various tools for golang which can format, examines and find the constructs in the program that are suspicious in nature.In this phase, out main goal is to search for a post from Stackoverflow database where the functions/methods/structs are not used accurately or users are facing issues while using it. To do a proof of concept, we recognize 10 functions/methods after searching through Stackoverflow database where users are not using them correctly that ended up getting an error.<br>
<b>Please find the link below:</b><br>
[click here](https://github.com/alt-code/CommunityRepair/blob/master/Sohan/godocFetchfunction/FunctionsAnalysis.xlsx)
