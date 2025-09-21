### How to Create Security Groups

### Reference link [https://youtu.be/jUOsap5OZ2A?list=PL9Tm5WqkVHXAQJyL09Qyw4BSZtO2pPSEB\&t=7101](https://youtu.be/jUOsap5OZ2A?list=PL9Tm5WqkVHXAQJyL09Qyw4BSZtO2pPSEB&t=7101)

- Tags are optional  
  - AWS Security Group tags, which are [key-value pairs](https://www.google.com/search?q=key-value+pairs&oq=what%27s+the+purpose+of+security+group+tags+aws&gs_lcrp=EgZjaHJvbWUyCQgAEEUYORigATIHCAEQIRirAjIHCAIQIRiPAjIHCAMQIRiPAtIBCDUwMzVqMGo3qAIAsAIA&sourceid=chrome&ie=UTF-8&mstk=AUtExfCs41DTVuajhrRVTmQasnxpJuRZJEoEVdC4AdW2pyGlSWUBx7ze1C7bI-0itcqeE1dNAwrDkfLq36qUw3Uwq-o3cic0EXZbZJCJ109mE8A-bteAjXuUBS5zU6UrAPGvlpBLWBuEx1S291OJYLYzhtyt3-IN7KjW7KQVTPnDFvwJwe4&csui=3&ved=2ahUKEwj24KKrleaPAxWpmIkEHXGKCRMQgK4QegQIARAB), serve the purpose of identifying, categorizing, and managing security groups and their rules by providing metadata such as purpose, owner, or environment. This allows for more organized management of security group rules at scale, simplifies automation by providing unique identifiers for rules, and enhances compliance through better auditing and consistent rule enforcement across AWS accounts.   
- Inbound rules \- people coming from outside to talk to our instance - only add http and ssh to this
- Don’t change outbound rules \- when our instance wants to talk to everyone else outside of us   
  - Easier to control what comes in than what goes out

### Name Your EC2 Instance

1. Keep your defaults  
2. Scroll down  
3. Scroll down with your key pairs  
4. Scroll down to the user part  
5. Select existing security group (the one that you did earlier)  
     
6. Don’t need to configure storage (for the time being)  
7. Open Advanced Details  
   1. Scroll down to “User Data”  
      1. Paste in bash script  
      2. Click launch instances  
8. Select Instances  
   1. Copy the Public DNS off of this  
   2. Type in [http://](http://paste)\[DNS link\] 

9. Check instance data \- to see it’s the same script \- can’t edit it ‘cause it’s running  
10. To Cancel:  
    1. Go in, select “instance state”  
    2. Then scroll down and click terminate instance

