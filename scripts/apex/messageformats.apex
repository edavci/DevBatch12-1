//JSON: Javascript Object Notation

//1 student single record

{
    "Name" : "Eda",
    "Age" : 29,
    "Title" : "Developer",
    "Salary" : 3000.50
}


//2 students detail in JSON format

[

    {
    "Name" : "Elif",
    "Age" : 29,
    "Title" : "Developer",
    "Salary" : 3000.50
}
{
    "Name" : "ibo",
    "Age" : 29,
    "Title" : "Developer",
    "Salary" : 3000.50
}
    
]

//Get an account record and covert the same into JSON format
Account acc = [SELECT Name, Type, Industry, AnnualRevenue FROM Account WHERE AnnualRevenue != null AND Type != null AND Industry != null LIMIT 1];
String jsonString = JSON.serialize(acc);
System.debug(jsonString);
//Get 4 accounts and covert the same into JSON format
List<Account> accounts = [SELECT Name, Type, Industry, AnnualRevenue
                        FROM Account
                        WHERE AnnualRevenue != null
                        AND Type != null
                        AND Industry != null
                        LIMIT 4];
String jsonString = JSON.serialize(accounts);
System.debug(jsonString);


//Callouts test
RestCallouts.getAnimals();
RestCallouts.getAirlines();
RestCallouts.getEmployees();
RestCallouts.getCasesUsingNC();
RestCallouts.postAnimal();

//solution design
Flow => Invocable Apex => Future Method (Callout)
Trigger => Future Method(Callout)
