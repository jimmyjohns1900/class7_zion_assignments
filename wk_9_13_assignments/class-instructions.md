### How to Create Security Groups

### Reference link [https://youtu.be/jUOsap5OZ2A?list=PL9Tm5WqkVHXAQJyL09Qyw4BSZtO2pPSEB\&t=7101](https://youtu.be/jUOsap5OZ2A?list=PL9Tm5WqkVHXAQJyL09Qyw4BSZtO2pPSEB&t=7101)

1. Go to the EC2 Menu
2. Go to Create Security Group
3. Name the group
4. Add a description if you like
5. Inbound rules \- people coming from outside to talk to our instance - only add http and ssh to this and switch destination to IPV4 for both
6. Don’t change outbound rules \- when our instance wants to talk to everyone else outside of us   
  - Easier to control what comes in than what goes out
7. Tags are optional  
  - AWS Security Group tags, which are [key-value pairs](https://www.google.com/search?q=key-value+pairs&oq=what%27s+the+purpose+of+security+group+tags+aws&gs_lcrp=EgZjaHJvbWUyCQgAEEUYORigATIHCAEQIRirAjIHCAIQIRiPAjIHCAMQIRiPAtIBCDUwMzVqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8&mstk=AUtExfCs41DTVuajhrRVTmQasnxpJuRZJEoEVdC4AdW2pyGlSWUBx7ze1C7bI-0itcqeE1dNAwrDkfLq36qUw3Uwq-o3cic0EXZbZJCJ109mE8A-bteAjXuUBS5zU6UrAPGvlpBLWBuEx1S291OJYLYzhtyt3-IN7KjW7KQVTPnDFvwJwe4&csui=3&ved=2ahUKEwj24KKrleaPAxWpmIkEHXGKCRMQgK4QegQIARAB), serve the purpose of identifying, categorizing, and managing security groups and their rules by providing metadata such as purpose, owner, or environment. This allows for more organized management of security group rules at scale, simplifies automation by providing unique identifiers for rules, and enhances compliance through better auditing and consistent rule enforcement across AWS accounts.   


### Once you create the security group, you can move on to your EC2 instance

### Name Your EC2 Instance

1. Go to the EC2 Instances Menu - 
2. Create a name
3. Choose the # of instances if you like
4. Select your AMI (Amazon Linux is fine for now)
5. Instance type - t3.micro is fine for now
6. Create a key pair (RSA type, .pem)
7. Select an existing security group and choose the one that you made above
8. Scroll down to Advanced Details
    a. Scroll down to the user details  
9. Adjust the .sh script as you see fit changing HTML, tokens as needed
10. Paste in the .sh script to create the instance
11. Click "Launch instance" 

### Once the Instance is running

1. You can select the instance by selecting the Instance ID
2. Once in the instance window, copy the publicDNS
3. Type in [http://[DNS link\] into a browser to verify that it's working

### To Terminate
10. To Cancel:  
    1. Go in, select “instance state”  
    2. Then scroll down and click terminate instance

