### In your Data Access Layer Install the following

aka run `dotnet add package package-name`

- Microsoft.EntityFrameworkCore.Design
- Microsoft.EntityFrameworkCore.Tools
- Microsoft.EntityFrameworkCore.SqlServer

### In your Application (in our case, asp.net core app)

- Microsoft.EntityFrameworkCore.Design

### Globally (so anywhere) run this

- `dotnet tool install --global dotnet-ef`

https://revature.zoom.us/j/89672971541?pwd=S2tORnNIdjRXU2pvVWRMU2k3WGwyZz09

- run this in Data Access Layer:
```
dotnet ef dbcontext scaffold <connection-string-in-double-quotes> Microsoft.EntityFrameworkCore.SqlServer --startup-project <path to project folder> --force --output-dir Entities --no-onconfiguring
```

dotnet ef dbcontext scaffold "Server=tcp:p2dbs.database.windows.net,1433;Initial Catalog=pokeDb;Persist Security Info=False;User ID=p2admin;Password=P@ssw0rd;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;" Microsoft.EntityFrameworkCore.SqlServer --startup-project ../WebAPI --force --output-dir Entities --no-onconfiguring