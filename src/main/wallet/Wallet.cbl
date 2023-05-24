IDENTIFICATION DIVISION.
PROGRAM-ID. WalletExample.
      
DATA DIVISION.
WORKING-STORAGE SECTION.
01 Wallet1 PIC 9(3) VALUE 100.
01 Wallet2 PIC 9(3) VALUE 50.
01 TransactionAmount PIC 9(3) VALUE 30.
      
PROCEDURE DIVISION.
    IF Wallet1 >= TransactionAmount THEN
        SUBTRACT TransactionAmount FROM Wallet1
        ADD TransactionAmount TO Wallet2
        DISPLAY 'Transaction successful. New balances: '
        DISPLAY 'Wallet1: ' Wallet1
        DISPLAY 'Wallet2: ' Wallet2
    ELSE
        DISPLAY 'Transaction failed. Insufficient funds in Wallet1.'
    END-IF
    .
STOP RUN.
