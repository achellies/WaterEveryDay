.class public Lcom/ub/main/data/ProductData;
.super Ljava/lang/Object;
.source "ProductData.java"


# instance fields
.field private bigUrl:Ljava/lang/String;

.field private id:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private num:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private smallUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ub/main/data/ProductData;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/ub/main/data/ProductData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ub/main/data/ProductData;->num:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/ub/main/data/ProductData;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ub/main/data/ProductData;->smallUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/ub/main/data/ProductData;->bigUrl:Ljava/lang/String;

    return-object v0
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 30
    iput-object p1, p0, Lcom/ub/main/data/ProductData;->id:Ljava/lang/String;

    .line 31
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .parameter "name"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/ub/main/data/ProductData;->name:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setNum(Ljava/lang/String;)V
    .locals 0
    .parameter "num"

    .prologue
    .line 77
    iput-object p1, p0, Lcom/ub/main/data/ProductData;->num:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .parameter "price"

    .prologue
    .line 61
    iput-object p1, p0, Lcom/ub/main/data/ProductData;->price:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setSmallUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "smallUrl"

    .prologue
    .line 53
    iput-object p1, p0, Lcom/ub/main/data/ProductData;->smallUrl:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 22
    iput-object p1, p0, Lcom/ub/main/data/ProductData;->bigUrl:Ljava/lang/String;

    .line 23
    return-void
.end method
