.class public Lcom/ub/main/data/CreditCardAccountInfo;
.super Ljava/lang/Object;
.source "CreditCardAccountInfo.java"


# static fields
.field public static final KEY_BANK:Ljava/lang/String; = "pd_FrpId"

.field public static final KEY_CARD:Ljava/lang/String; = "pt_ActId"

.field public static final KEY_CARDID:Ljava/lang/String; = "cardID"

.field public static final KEY_DEFAULT:Ljava/lang/String; = "isdefault"

.field public static final KEY_EFFECTIVE:Ljava/lang/String; = "effective"

.field public static final KEY_LASTCODE:Ljava/lang/String; = "lastcode"

.field public static final KEY_NAME:Ljava/lang/String; = "name"

.field public static final KEY_PHONE:Ljava/lang/String; = "phone"

.field public static final KEY_PWD:Ljava/lang/String; = "password"

.field public static final NAME_XYK:Ljava/lang/String; = "account_xyk"


# instance fields
.field private bank:I

.field private cardId:Ljava/lang/String;

.field private cardNumber:Ljava/lang/String;

.field private effcetiveTime:Ljava/lang/String;

.field private isDefault:I

.field private lastThreeCode:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private phone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->isDefault:I

    .line 8
    return-void
.end method


# virtual methods
.method public getBank()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->bank:I

    return v0
.end method

.method public getCardId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->cardId:Ljava/lang/String;

    return-object v0
.end method

.method public getCardNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->cardNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault()I
    .locals 1

    .prologue
    .line 82
    iget v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->isDefault:I

    return v0
.end method

.method public getEffcetiveTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->effcetiveTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastThreeCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->lastThreeCode:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->password:Ljava/lang/String;

    return-object v0
.end method

.method public getPhone()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/ub/main/data/CreditCardAccountInfo;->phone:Ljava/lang/String;

    return-object v0
.end method

.method public setBank(I)V
    .locals 0
    .parameter "bank"

    .prologue
    .line 136
    iput p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->bank:I

    .line 137
    return-void
.end method

.method public setCardId(Ljava/lang/String;)V
    .locals 0
    .parameter "cardId"

    .prologue
    .line 112
    iput-object p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->cardId:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setCardNumber(Ljava/lang/String;)V
    .locals 0
    .parameter "cardNumber"

    .prologue
    .line 88
    iput-object p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->cardNumber:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setDefault(I)V
    .locals 0
    .parameter "isDefault"

    .prologue
    .line 76
    iput p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->isDefault:I

    .line 77
    return-void
.end method

.method public setEffcetiveTime(Ljava/lang/String;)V
    .locals 0
    .parameter "effcetiveTime"

    .prologue
    .line 51
    iput-object p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->effcetiveTime:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setLastThreeCode(Ljava/lang/String;)V
    .locals 0
    .parameter "lastThreeCode"

    .prologue
    .line 63
    iput-object p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->lastThreeCode:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 100
    iput-object p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->name:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .parameter "password"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->password:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setPhone(Ljava/lang/String;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/ub/main/data/CreditCardAccountInfo;->phone:Ljava/lang/String;

    .line 125
    return-void
.end method
