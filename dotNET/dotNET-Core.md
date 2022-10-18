# .NET Core

## What is it and what does it do?

- The .NET Core is an open-source, cross-platform, full-stack framework/service/suite (**which?**) to create and run many types of applications
  - desktop
  - mobile
  - command line apps
  - Web apps
  - Services
  - Cloud-based
  - IoT apps
  - *mobile backends?*
- Follows OOP principles
- Uses many **.NET compliant** languages including C#, F#, VB.NET, and many more
- Platform comprised of *compliant* languages, frameworks (such as ASP.NET, Unity, Mono), packages, classes, libraries, APIs, etc.
- **Common Language Interface** (CLI) - Specifications for languages to be compliant and compatible
- Easy command line tools for developing console apps and class libraries
- Good with Containerization (Docker, etc)

## .NET Core v6

- .NET Runtime (**CLR**) and ASP.NET Core Runtime in the SDK
- SDKs for Android, iOS, MacOS for developing native apps
- Something called .MAUI

## How .NET works

### Common Language Runtime (CLR)

Provides services for all **CLI**(?) languages such as

- Garbage Collection
- Memory Management
- Exception Handling
- Type Safety

1. Write your source code
2. Compile it to CIL (Common Intermediate Language)
3. Framework stores compiled code -- Microsoft Intermediate Language (MIL) in .dll file or .exe
0. **Where does *"native code"* belong**
4. The CLR (Common Language Runtime) converts CIL to executable machine code using Just-In-Time (JIT) compiler.

Takes advantage of controllers, services, and other middleware for abstraction purposes -- both security and organizational (separation of concerns, modularization).
