.class public Lcom/ub/main/data/AlipayAccountInfo;
.super Ljava/lang/Object;
.source "AlipayAccountInfo.java"


# static fields
.field public static final KEY_ACCOUNT:Ljava/lang/String; = "account"

.field public static final KEY_DEFAULT:Ljava/lang/String; = "isdefault"

.field public static final KEY_PWD:Ljava/lang/String; = "password"

.field public static final NAME_ZFB:Ljava/lang/String; = "account_zfb"


# instance fields
.field private account:Ljava/lang/String;

.field private isDefault:I

.field private passWord:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/data/AlipayAccountInfo;->isDefault:I

    .line 3
    return-void
.end method


# virtual methods
.method public getAccount()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ub/main/data/AlipayAccountInfo;->account:Ljava/lang/String;

    return-object v0
.end method

.method public getDefault()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/ub/main/data/AlipayAccountInfo;->isDefault:I

    return v0
.end method

.method public getPassWord()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ub/main/data/AlipayAccountInfo;->passWord:Ljava/lang/String;

    return-object v0
.end method

.method public setAccount(Ljava/lang/String;)V
    .locals 0
    .parameter "account"

    .prologue
    .line 16
    iput-object p1, p0, Lcom/ub/main/data/AlipayAccountInfo;->account:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public setDefault(I)V
    .locals 0
    .parameter "isDefault"

    .prologue
    .line 40
    iput p1, p0, Lcom/ub/main/data/AlipayAccountInfo;->isDefault:I

    .line 41
    return-void
.end method

.method public setPassWord(Ljava/lang/String;)V
    .locals 0
    .parameter "passWord"

    .prologue
    .line 28
    iput-object p1, p0, Lcom/ub/main/data/AlipayAccountInfo;->passWord:Ljava/lang/String;

    .line 29
    return-void
.end method
