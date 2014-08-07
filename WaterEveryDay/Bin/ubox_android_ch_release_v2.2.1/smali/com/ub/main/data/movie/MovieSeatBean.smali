.class public Lcom/ub/main/data/movie/MovieSeatBean;
.super Ljava/lang/Object;
.source "MovieSeatBean.java"


# instance fields
.field private MaxX:I

.field private MaxY:I

.field private layerSeats:[Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/movie/SeatData;",
            ">;"
        }
    .end annotation
.end field

.field private totalLayer:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->MaxX:I

    iput v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->MaxY:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->totalLayer:I

    .line 13
    return-void
.end method


# virtual methods
.method public addSeat(ILcom/ub/main/data/movie/SeatData;)V
    .locals 2
    .parameter "layer"
    .parameter "seat"

    .prologue
    .line 70
    iget-object v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->layerSeats:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->layerSeats:[Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    aput-object v1, v0, p1

    .line 73
    :cond_0
    iget-object v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->layerSeats:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    return-void
.end method

.method public getLayerSeats()[Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/movie/SeatData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->layerSeats:[Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMaxX()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->MaxX:I

    return v0
.end method

.method public getMaxY()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->MaxY:I

    return v0
.end method

.method public getSeatList(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "layer"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/movie/SeatData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->layerSeats:[Ljava/util/ArrayList;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getTotalLayer()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->totalLayer:I

    return v0
.end method

.method public setLayerSeats([Ljava/util/ArrayList;)V
    .locals 0
    .parameter "layerSeats"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/movie/SeatData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 65
    iput-object p1, p0, Lcom/ub/main/data/movie/MovieSeatBean;->layerSeats:[Ljava/util/ArrayList;

    .line 66
    return-void
.end method

.method public setMaxX(I)V
    .locals 0
    .parameter "maxX"

    .prologue
    .line 38
    iput p1, p0, Lcom/ub/main/data/movie/MovieSeatBean;->MaxX:I

    .line 39
    return-void
.end method

.method public setMaxY(I)V
    .locals 0
    .parameter "maxY"

    .prologue
    .line 46
    iput p1, p0, Lcom/ub/main/data/movie/MovieSeatBean;->MaxY:I

    .line 47
    return-void
.end method

.method public setTotalLayer(I)V
    .locals 1
    .parameter "totalLayer"

    .prologue
    .line 55
    new-array v0, p1, [Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/ub/main/data/movie/MovieSeatBean;->layerSeats:[Ljava/util/ArrayList;

    .line 56
    iput p1, p0, Lcom/ub/main/data/movie/MovieSeatBean;->totalLayer:I

    .line 57
    return-void
.end method
