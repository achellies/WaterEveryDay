.class public Lcom/ub/main/data/movie/Cinema;
.super Ljava/lang/Object;
.source "Cinema.java"


# instance fields
.field private address:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private code:Ljava/lang/String;

.field private distance:Ljava/lang/String;

.field private district:Ljava/lang/String;

.field private gis_x:Ljava/lang/String;

.field private gis_y:Ljava/lang/String;

.field private name:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private province:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->distance:Ljava/lang/String;

    return-object v0
.end method

.method public getDistrict()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->district:Ljava/lang/String;

    return-object v0
.end method

.method public getGis_x()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->gis_x:Ljava/lang/String;

    return-object v0
.end method

.method public getGis_y()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->gis_y:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getProvince()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/ub/main/data/movie/Cinema;->province:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 1
    .parameter "address"

    .prologue
    .line 65
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->address:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .locals 1
    .parameter "city"

    .prologue
    .line 41
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->city:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setCode(Ljava/lang/String;)V
    .locals 2
    .parameter "code"

    .prologue
    .line 53
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->code:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setDistance(Ljava/lang/String;)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 83
    iput-object p1, p0, Lcom/ub/main/data/movie/Cinema;->distance:Ljava/lang/String;

    .line 84
    return-void
.end method

.method public setDistrict(Ljava/lang/String;)V
    .locals 1
    .parameter "district"

    .prologue
    .line 47
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->district:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setGis_x(Ljava/lang/String;)V
    .locals 2
    .parameter "gis_x"

    .prologue
    .line 71
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->gis_x:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setGis_y(Ljava/lang/String;)V
    .locals 2
    .parameter "gis_y"

    .prologue
    .line 77
    const-string v0, "\n"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->gis_y:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1
    .parameter "name"

    .prologue
    .line 59
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->name:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 1
    .parameter "price"

    .prologue
    .line 29
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->price:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setProvince(Ljava/lang/String;)V
    .locals 1
    .parameter "province"

    .prologue
    .line 35
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/Cinema;->province:Ljava/lang/String;

    .line 36
    return-void
.end method
