ALTER PROCEDURE sp_insert
(
@APSing varchar(50),
@CurrencyISOCode varchar(50),
@IBAN varchar(50),
@Description varchar(50),
@AccounttypeId int,
@DateOpen date,
@AccountStateId int,
@ResponsibleUser varchar(50),
@OperDate date,
@AccRestOpen float,
@AccRestNow float,
@AccDebit float,
@AccCredit float
)
AS
insert into Accounts values (@APSing,@CurrencyISOCode,@IBAN,@Description,@AccounttypeId,@DateOpen,@AccountStateId,@ResponsibleUser,@OperDate,@AccRestOpen,@AccRestNow,@AccDebit,@AccCredit)
RETURN
