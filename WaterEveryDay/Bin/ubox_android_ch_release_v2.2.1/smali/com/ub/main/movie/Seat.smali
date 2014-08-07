.class public Lcom/ub/main/movie/Seat;
.super Landroid/widget/TextView;
.source "Seat.java"


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
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 73
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8
    iput-boolean v0, p0, Lcom/ub/main/movie/Seat;->selected:Z

    .line 9
    iput v0, p0, Lcom/ub/main/movie/Seat;->gx:I

    iput v0, p0, Lcom/ub/main/movie/Seat;->gy:I

    iput v0, p0, Lcom/ub/main/movie/Seat;->layer:I

    .line 10
    iput v0, p0, Lcom/ub/main/movie/Seat;->status:I

    .line 11
    iput v0, p0, Lcom/ub/main/movie/Seat;->lovetype:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/Seat;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/Seat;->y:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/Seat;->type:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    iput-boolean v0, p0, Lcom/ub/main/movie/Seat;->selected:Z

    .line 9
    iput v0, p0, Lcom/ub/main/movie/Seat;->gx:I

    iput v0, p0, Lcom/ub/main/movie/Seat;->gy:I

    iput v0, p0, Lcom/ub/main/movie/Seat;->layer:I

    .line 10
    iput v0, p0, Lcom/ub/main/movie/Seat;->status:I

    .line 11
    iput v0, p0, Lcom/ub/main/movie/Seat;->lovetype:I

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/Seat;->x:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/Seat;->y:Ljava/lang/String;

    .line 71
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/Seat;->type:Ljava/lang/String;

    .line 80
    return-void
.end method


# virtual methods
.method public getGx()I
    .locals 1

    .prologue
    .line 15
    iget v0, p0, Lcom/ub/main/movie/Seat;->gx:I

    return v0
.end method

.method public getGy()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/ub/main/movie/Seat;->gy:I

    return v0
.end method

.method public getLayer()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/ub/main/movie/Seat;->layer:I

    return v0
.end method

.method public getLovetype()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/ub/main/movie/Seat;->lovetype:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 56
    iget v0, p0, Lcom/ub/main/movie/Seat;->status:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/ub/main/movie/Seat;->type:Ljava/lang/String;

    return-object v0
.end method

.method public getX()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/ub/main/movie/Seat;->x:Ljava/lang/String;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/ub/main/movie/Seat;->y:Ljava/lang/String;

    return-object v0
.end method

.method public isSelected_()Z
    .locals 1

    .prologue
    .line 83
    iget-boolean v0, p0, Lcom/ub/main/movie/Seat;->selected:Z

    return v0
.end method

.method public setGx(I)V
    .locals 0
    .parameter "gx"

    .prologue
    .line 19
    iput p1, p0, Lcom/ub/main/movie/Seat;->gx:I

    .line 20
    return-void
.end method

.method public setGy(I)V
    .locals 0
    .parameter "gy"

    .prologue
    .line 27
    iput p1, p0, Lcom/ub/main/movie/Seat;->gy:I

    .line 28
    return-void
.end method

.method public setLayer(I)V
    .locals 0
    .parameter "layer"

    .prologue
    .line 52
    iput p1, p0, Lcom/ub/main/movie/Seat;->layer:I

    .line 53
    return-void
.end method

.method public setLovetype(I)V
    .locals 0
    .parameter "lovetype"

    .prologue
    .line 97
    iput p1, p0, Lcom/ub/main/movie/Seat;->lovetype:I

    .line 98
    return-void
.end method

.method public setSelected(Z)V
    .locals 0
    .parameter "s"

    .prologue
    .line 87
    iput-boolean p1, p0, Lcom/ub/main/movie/Seat;->selected:Z

    .line 88
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    .line 60
    iput p1, p0, Lcom/ub/main/movie/Seat;->status:I

    .line 61
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .parameter "type"

    .prologue
    .line 68
    iput-object p1, p0, Lcom/ub/main/movie/Seat;->type:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setX(Ljava/lang/String;)V
    .locals 0
    .parameter "x"

    .prologue
    .line 35
    iput-object p1, p0, Lcom/ub/main/movie/Seat;->x:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setY(Ljava/lang/String;)V
    .locals 0
    .parameter "y"

    .prologue
    .line 43
    iput-object p1, p0, Lcom/ub/main/movie/Seat;->y:Ljava/lang/String;

    .line 44
    return-void
.end method
