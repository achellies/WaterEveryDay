.class public Lcom/ub/main/data/movie/SeatData;
.super Ljava/lang/Object;
.source "SeatData.java"


# instance fields
.field private gx:I

.field private gy:I

.field private layer:I

.field private lovetype:I

.field private selected:Z

.field private status:I

.field private type:Ljava/lang/String;

.field private x:Ljava/lang/String;

.field private y:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-boolean v1, p0, Lcom/ub/main/data/movie/SeatData;->selected:Z

    .line 7
    iput v1, p0, Lcom/ub/main/data/movie/SeatData;->gx:I

    iput v1, p0, Lcom/ub/main/data/movie/SeatData;->gy:I

    iput v1, p0, Lcom/ub/main/data/movie/SeatData;->layer:I

    .line 8
    iput v1, p0, Lcom/ub/main/data/movie/SeatData;->status:I

    .line 9
    const-string v0, "N"

    iput-object v0, p0, Lcom/ub/main/data/movie/SeatData;->type:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/SeatData;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/data/movie/SeatData;->y:Ljava/lang/String;

    .line 10
    iput v1, p0, Lcom/ub/main/data/movie/SeatData;->lovetype:I

    .line 26
    return-void
.end method


# virtual methods
.method public getGx()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/ub/main/data/movie/SeatData;->gx:I

    return v0
.end method

.method public getGy()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/ub/main/data/movie/SeatData;->gy:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Lcom/ub/main/data/movie/SeatData;->layer:I

    return v0
.end method

.method public getLovetype()I
    .locals 1

    .prologue
    .line 13
    iget v0, p0, Lcom/ub/main/data/movie/SeatData;->lovetype:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ub/main/data/movie/SeatData;->status:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/ub/main/data/movie/SeatData;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/ub/main/data/movie/SeatData;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ub/main/data/movie/SeatData;->y:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected_()Z
    .locals 1

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/ub/main/data/movie/SeatData;->selected:Z

    return v0
.end method

.method public setGx(I)V
    .locals 0
    .parameter "gx"

    .prologue
    .line 34
    iput p1, p0, Lcom/ub/main/data/movie/SeatData;->gx:I

    .line 35
    return-void
.end method

.method public setGx(Ljava/lang/String;)V
    .locals 1
    .parameter "gx"

    .prologue
    .line 38
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ub/main/data/movie/SeatData;->gx:I

    .line 41
    :cond_0
    return-void
.end method

.method public setGy(I)V
    .locals 0
    .parameter "gy"

    .prologue
    .line 49
    iput p1, p0, Lcom/ub/main/data/movie/SeatData;->gy:I

    .line 50
    return-void
.end method

.method public setGy(Ljava/lang/String;)V
    .locals 1
    .parameter "gy"

    .prologue
    .line 53
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 54
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ub/main/data/movie/SeatData;->gy:I

    .line 56
    :cond_0
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 82
    iput p1, p0, Lcom/ub/main/data/movie/SeatData;->layer:I

    .line 83
    return-void
.end method

.method public setLayer(Ljava/lang/String;)V
    .locals 1
    .parameter "layer"

    .prologue
    .line 86
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 87
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ub/main/data/movie/SeatData;->layer:I

    .line 89
    :cond_0
    return-void
.end method

.method public setLovetype(Ljava/lang/String;)V
    .locals 1
    .parameter "lovetype"

    .prologue
    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ub/main/data/movie/SeatData;->lovetype:I

    .line 21
    :cond_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "s"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/ub/main/data/movie/SeatData;->selected:Z

    .line 120
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 96
    iput p1, p0, Lcom/ub/main/data/movie/SeatData;->status:I

    .line 97
    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1
    .parameter "status"

    .prologue
    .line 100
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 101
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/ub/main/data/movie/SeatData;->status:I

    .line 103
    :cond_0
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 110
    iput-object p1, p0, Lcom/ub/main/data/movie/SeatData;->type:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 64
    iput-object p1, p0, Lcom/ub/main/data/movie/SeatData;->x:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 0
    .parameter "y"

    .prologue
    .line 73
    iput-object p1, p0, Lcom/ub/main/data/movie/SeatData;->y:Ljava/lang/String;

    .line 74
    return-void
.end method
