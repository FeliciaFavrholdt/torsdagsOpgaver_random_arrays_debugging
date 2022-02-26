//This is the debug code 

/* 
boolean jobsDone = true;

void setup()
{
    println(isValueGreaterThanThreshold(10, 5));
    println(isValueGreaterThanThreshold(4, 8));
    
    if (isJobDone())
    {
        println("Job's done!"); 
    }
}

boolean isValueGreaterThanThreshold(int value, int threshold) 
{
    if (value > threshold) 
    {
        return true;                
    }
}

boolean isJobDone()
{
    return jobsDone;    
}
*/ 

//This is the solution
boolean jobsDone = true;

void setup() {
    println(isValueGreaterThanThreshold(10, 5));
    println(isValueGreaterThanThreshold(4, 8));
    
    if (isJobDone()) {
        println("Job's done"); 
    }
}

int isValueGreaterThanThreshold(int value, int threshold) {
    if (value > threshold) {           
    }
    return value;
}

boolean isJobDone() {
    return jobsDone;    
}
