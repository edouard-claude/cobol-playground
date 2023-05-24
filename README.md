# First COBOL Playground

This project contains three small programs written in COBOL for learning purposes. The source files are located in `src/main` and the executables are located in the `bin` directory.

## Contents

### `/src/main/hello`

This directory contains a simple COBOL program (`HelloWorld.cbl`) that prints the message "Hello, World!". It's a great introduction to the basic structure of a COBOL program.

To run this program, use the following command:

```bash
./bin/hello/HelloWorld
```

### `/src/main/wallet`

This directory contains a COBOL program (Wallet.cbl) that simulates an electronic wallet. It defines two wallets, one with an initial balance of 100€ and the other with an initial balance of 50€. One wallet tries to transfer money to the other if it can.

To run this program, use the following command:

```bash
./bin/wallet/Wallet
```

### `/src/main/booking`

This directory contains a simple COBOL program (Booking.cbl) that acts as a booking system. It manages a simple list of bookings for a single hotel room. The program allows the user to add a booking or list the existing bookings.

To run this program, use the following command:

```bash
./bin/booking/Booking
```

## Testing

Tests for the hello and wallet programs can be found in the src/test directory.

## Documentation

Additional documentation can be found in the doc directory.

## Building

To build the executables, use the provided Makefile:

```bash
make all
```