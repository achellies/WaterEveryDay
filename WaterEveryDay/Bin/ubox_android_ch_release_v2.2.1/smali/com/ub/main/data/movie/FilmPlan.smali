.class public Lcom/ub/main/data/movie/FilmPlan;
.super Ljava/lang/Object;
.source "FilmPlan.java"


# instance fields
.field private balanceSeats:Ljava/lang/String;

.field private filmName:Ljava/lang/String;

.field private filmPic:Ljava/lang/String;

.field private filmType:Ljava/lang/String;

.field private planCode:Ljava/lang/String;

.field private planDate:Ljava/lang/String;

.field private price:Ljava/lang/String;

.field private sellerID:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->time:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->price:Ljava/lang/String;

    .line 21
    const-string v0, "--"

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->balanceSeats:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmName:Ljava/lang/String;

    .line 23
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->planCode:Ljava/lang/String;

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->planDate:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmType:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmPic:Ljava/lang/String;

    .line 27
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->sellerID:Ljava/lang/String;

    .line 8
    return-void
.end method


# virtual methods
.method public getBalanceSeats()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->balanceSeats:Ljava/lang/String;

    return-object v0
.end method

.method public getFilmName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilmPic()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmPic:Ljava/lang/String;

    return-object v0
.end method

.method public getFilmType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmType:Ljava/lang/String;

    return-object v0
.end method

.method public getPlanCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->planCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlanDate()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->planDate:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->price:Ljava/lang/String;

    return-object v0
.end method

.method public getSellerID()Ljava/lang/String;
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->sellerID:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setBalanceSeats(Ljava/lang/String;)V
    .locals 3
    .parameter "balanceSeats"

    .prologue
    .line 42
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->balanceSeats:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setFilmName(Ljava/lang/String;)V
    .locals 3
    .parameter "filmName"

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setFilmPic(Ljava/lang/String;)V
    .locals 3
    .parameter "filmPic"

    .prologue
    .line 87
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmPic:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setFilmType(Ljava/lang/String;)V
    .locals 3
    .parameter "filmType"

    .prologue
    .line 75
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->filmType:Ljava/lang/String;

    .line 76
    return-void
.end method

.method public setPlanCode(Ljava/lang/String;)V
    .locals 3
    .parameter "planCode"

    .prologue
    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->planCode:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPlanDate(Ljava/lang/String;)V
    .locals 3
    .parameter "planDate"

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->planDate:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 3
    .parameter "price"

    .prologue
    .line 36
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->price:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setSellerID(Ljava/lang/String;)V
    .locals 0
    .parameter "sellerID"

    .prologue
    .line 99
    iput-object p1, p0, Lcom/ub/main/data/movie/FilmPlan;->sellerID:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 3
    .parameter "time"

    .prologue
    .line 30
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/data/movie/FilmPlan;->time:Ljava/lang/String;

    .line 31
    return-void
.end method
