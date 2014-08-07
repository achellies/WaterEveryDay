.class public Lcom/ub/main/movie/SeatSelector;
.super Landroid/widget/LinearLayout;
.source "SeatSelector.java"


# static fields
.field public static PANELTYPE_BLUE:I

.field public static PANELTYPE_RED:I

.field public static maxX:I

.field public static maxY:I


# instance fields
.field private ballCt:Landroid/widget/TableLayout;

.field private ballNumType:I

.field private center:I

.field private cols:I

.field private context:Landroid/content/Context;

.field private loverseat_available_l:I

.field private loverseat_available_r:I

.field private loverseat_selected_l:I

.field private loverseat_selected_r:I

.field private loverseat_unavailable_l:I

.field private loverseat_unavailable_r:I

.field private panelBg:I

.field private panelType:I

.field private rows:I

.field private seatSelListener:Lcom/ub/main/movie/SeatSelectListener;

.field private seatSize:I

.field private seat_available:I

.field private seat_selected:I

.field private seat_unavailable:I

.field private seats:[Lcom/ub/main/movie/Label;

.field private seats_:[[Lcom/ub/main/movie/Seat;

.field private selectedSeats:Ljava/util/Vector;

.field private tableRows:[Landroid/widget/TableRow;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 21
    sput v1, Lcom/ub/main/movie/SeatSelector;->PANELTYPE_RED:I

    .line 22
    sget v0, Lcom/ub/main/movie/SeatSelector;->PANELTYPE_RED:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/movie/SeatSelector;->PANELTYPE_BLUE:I

    .line 23
    sput v1, Lcom/ub/main/movie/SeatSelector;->maxX:I

    sput v1, Lcom/ub/main/movie/SeatSelector;->maxY:I

    .line 20
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    .line 31
    const/16 v0, 0x28

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->seatSize:I

    .line 33
    const/16 v0, 0x11

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->center:I

    .line 34
    sget v0, Lcom/ub/main/movie/SeatSelector;->PANELTYPE_RED:I

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->panelType:I

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->ballNumType:I

    .line 49
    invoke-direct {p0, p1}, Lcom/ub/main/movie/SeatSelector;->init(Landroid/content/Context;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 0
    .parameter "context"
    .parameter "seatTotal"
    .parameter "cols"

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/ub/main/movie/SeatSelector;-><init>(Landroid/content/Context;)V

    .line 60
    invoke-virtual {p0, p2, p3}, Lcom/ub/main/movie/SeatSelector;->loadPanel(II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    const/16 v0, 0x8

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    .line 31
    const/16 v0, 0x28

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->seatSize:I

    .line 33
    const/16 v0, 0x11

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->center:I

    .line 34
    sget v0, Lcom/ub/main/movie/SeatSelector;->PANELTYPE_RED:I

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->panelType:I

    .line 38
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    .line 43
    const/4 v0, 0x0

    iput v0, p0, Lcom/ub/main/movie/SeatSelector;->ballNumType:I

    .line 55
    invoke-direct {p0, p1}, Lcom/ub/main/movie/SeatSelector;->init(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Label;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 359
    invoke-direct {p0, p1}, Lcom/ub/main/movie/SeatSelector;->setBallDeselectedStyle(Lcom/ub/main/movie/Label;)V

    return-void
.end method

.method static synthetic access$1(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Label;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 266
    invoke-direct {p0, p1}, Lcom/ub/main/movie/SeatSelector;->setBallSelectedStyle(Lcom/ub/main/movie/Label;)V

    return-void
.end method

.method static synthetic access$2(Lcom/ub/main/movie/SeatSelector;)Landroid/content/Context;
    .locals 1
    .parameter

    .prologue
    .line 32
    iget-object v0, p0, Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$3(Lcom/ub/main/movie/SeatSelector;)Lcom/ub/main/movie/SeatSelectListener;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ub/main/movie/SeatSelector;->seatSelListener:Lcom/ub/main/movie/SeatSelectListener;

    return-object v0
.end method

.method static synthetic access$4(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Seat;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 330
    invoke-direct {p0, p1}, Lcom/ub/main/movie/SeatSelector;->setSeatDeSelectedStyle(Lcom/ub/main/movie/Seat;)I

    move-result v0

    return v0
.end method

.method static synthetic access$5(Lcom/ub/main/movie/SeatSelector;Lcom/ub/main/movie/Seat;)I
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 296
    invoke-direct {p0, p1}, Lcom/ub/main/movie/SeatSelector;->setSeatSelectedStyle(Lcom/ub/main/movie/Seat;)I

    move-result v0

    return v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, -0x2

    .line 64
    const v1, 0x7f0200a6

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->seat_available:I

    .line 65
    const v1, 0x7f02009e

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->seat_selected:I

    .line 66
    const v1, 0x7f0200a5

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->seat_unavailable:I

    .line 67
    const v1, 0x7f0200a1

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_l:I

    .line 68
    const v1, 0x7f02009f

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_selected_l:I

    .line 69
    const v1, 0x7f0200a2

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_unavailable_l:I

    .line 70
    const v1, 0x7f0200a3

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_r:I

    .line 71
    const v1, 0x7f0200a0

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_selected_r:I

    .line 72
    const v1, 0x7f0200a4

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_unavailable_r:I

    .line 73
    const v1, 0x7f0200a7

    iput v1, p0, Lcom/ub/main/movie/SeatSelector;->panelBg:I

    .line 74
    iput-object p1, p0, Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;

    .line 75
    const-string v1, "layout_inflater"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 76
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/SeatSelector;->view:Landroid/view/View;

    .line 77
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector;->view:Landroid/view/View;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v1, v2}, Lcom/ub/main/movie/SeatSelector;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector;->view:Landroid/view/View;

    const v2, 0x7f080136

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TableLayout;

    iput-object v1, p0, Lcom/ub/main/movie/SeatSelector;->ballCt:Landroid/widget/TableLayout;

    .line 80
    return-void
.end method

.method private isBallSelected(I)Z
    .locals 4
    .parameter "index"

    .prologue
    .line 371
    const/16 v2, 0xa

    if-ge p1, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 372
    .local v1, indexStr:Ljava/lang/String;
    :goto_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    .line 377
    const/4 v2, 0x0

    :goto_2
    return v2

    .line 371
    .end local v0           #i:I
    .end local v1           #indexStr:Ljava/lang/String;
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 373
    .restart local v0       #i:I
    .restart local v1       #indexStr:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 374
    const/4 v2, 0x1

    goto :goto_2

    .line 372
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private setBallDeselectedStyle(Lcom/ub/main/movie/Label;)V
    .locals 1
    .parameter "ball"

    .prologue
    .line 360
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->seat_available:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Label;->setBackgroundResource(I)V

    .line 361
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Label;->setSelected(Z)V

    .line 363
    return-void
.end method

.method private setBallSelectedStyle(Lcom/ub/main/movie/Label;)V
    .locals 1
    .parameter "ball"

    .prologue
    .line 267
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->seat_selected:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Label;->setBackgroundResource(I)V

    .line 268
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Label;->setSelected(Z)V

    .line 270
    return-void
.end method

.method private setSeatDeSelectedStyle(Lcom/ub/main/movie/Seat;)I
    .locals 6
    .parameter "seat"

    .prologue
    const/4 v5, 0x0

    .line 331
    const/4 v0, 0x0

    .line 332
    .local v0, deselNum:I
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 333
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v3

    if-nez v3, :cond_1

    .line 334
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->seat_available:I

    invoke-virtual {p1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 335
    const/4 v0, 0x1

    .line 349
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    .line 353
    :goto_1
    return v0

    .line 336
    :cond_1
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 337
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_l:I

    invoke-virtual {p1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 338
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGx()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGy()I

    move-result v4

    aget-object v1, v3, v4

    .line 339
    .local v1, nextSeat:Lcom/ub/main/movie/Seat;
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_r:I

    invoke-virtual {v1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 340
    invoke-virtual {v1, v5}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    .line 341
    const/4 v0, 0x2

    goto :goto_0

    .line 342
    .end local v1           #nextSeat:Lcom/ub/main/movie/Seat;
    :cond_2
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 343
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_r:I

    invoke-virtual {p1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 344
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGx()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGy()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    aget-object v2, v3, v4

    .line 345
    .local v2, preSeat:Lcom/ub/main/movie/Seat;
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_l:I

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 346
    invoke-virtual {v2, v5}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    .line 347
    const/4 v0, 0x2

    goto :goto_0

    .line 351
    .end local v2           #preSeat:Lcom/ub/main/movie/Seat;
    :cond_3
    invoke-virtual {p1, v5}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    goto :goto_1
.end method

.method private setSeatSelectedStyle(Lcom/ub/main/movie/Seat;)I
    .locals 6
    .parameter "seat"

    .prologue
    const/4 v5, 0x1

    .line 297
    const/4 v2, 0x0

    .line 298
    .local v2, selNum:I
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "N"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 299
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v3

    if-nez v3, :cond_1

    .line 300
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->seat_selected:I

    invoke-virtual {p1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 301
    const/4 v2, 0x1

    .line 319
    :cond_0
    :goto_0
    invoke-virtual {p1, v5}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    .line 323
    :goto_1
    return v2

    .line 302
    :cond_1
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 303
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGx()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGy()I

    move-result v4

    aget-object v0, v3, v4

    .line 304
    .local v0, nextSeat:Lcom/ub/main/movie/Seat;
    invoke-virtual {v0}, Lcom/ub/main/movie/Seat;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 305
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_selected_l:I

    invoke-virtual {p1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 306
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_selected_r:I

    invoke-virtual {v0, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 307
    invoke-virtual {v0, v5}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    .line 308
    const/4 v2, 0x2

    goto :goto_0

    .line 310
    .end local v0           #nextSeat:Lcom/ub/main/movie/Seat;
    :cond_2
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 311
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGx()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget-object v3, v3, v4

    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getGy()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    aget-object v1, v3, v4

    .line 312
    .local v1, preSeat:Lcom/ub/main/movie/Seat;
    invoke-virtual {v1}, Lcom/ub/main/movie/Seat;->getStatus()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 313
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_selected_r:I

    invoke-virtual {p1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 314
    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_selected_l:I

    invoke-virtual {v1, v3}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 315
    invoke-virtual {v1, v5}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    .line 316
    const/4 v2, 0x2

    goto :goto_0

    .line 321
    .end local v1           #preSeat:Lcom/ub/main/movie/Seat;
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/ub/main/movie/Seat;->setSelected(Z)V

    goto :goto_1
.end method

.method private setSeatStyle(Lcom/ub/main/movie/Seat;)V
    .locals 3
    .parameter "seat"

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 273
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getStatus()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 274
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v0

    if-nez v0, :cond_1

    .line 275
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->seat_available:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 277
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_l:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    goto :goto_0

    .line 278
    :cond_2
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 279
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_available_r:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    goto :goto_0

    .line 282
    :cond_3
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v0

    if-nez v0, :cond_4

    .line 283
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->seat_unavailable:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    goto :goto_0

    .line 284
    :cond_4
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 285
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_unavailable_l:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    goto :goto_0

    .line 286
    :cond_5
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->getLovetype()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 287
    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->loverseat_unavailable_r:I

    invoke-virtual {p1, v0}, Lcom/ub/main/movie/Seat;->setBackgroundResource(I)V

    goto :goto_0
.end method


# virtual methods
.method public getBalls()[Lcom/ub/main/movie/Label;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    return-object v0
.end method

.method public getSeatSelListener()Lcom/ub/main/movie/SeatSelectListener;
    .locals 1

    .prologue
    .line 410
    iget-object v0, p0, Lcom/ub/main/movie/SeatSelector;->seatSelListener:Lcom/ub/main/movie/SeatSelectListener;

    return-object v0
.end method

.method public getSelectedNumbers()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 394
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    .line 395
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    if-eqz v1, :cond_0

    .line 396
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 402
    .end local v0           #i:I
    :cond_0
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    return-object v1

    .line 397
    .restart local v0       #i:I
    :cond_1
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/ub/main/movie/Label;->isSelected_()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 398
    iget-object v1, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ub/main/movie/Label;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 396
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getSelectedSeats()Ljava/util/Vector;
    .locals 4

    .prologue
    .line 234
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 235
    .local v2, sel:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    array-length v3, v3

    if-lt v0, v3, :cond_0

    .line 242
    return-object v2

    .line 236
    :cond_0
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v3, v3, v0

    array-length v3, v3

    if-lt v1, v3, :cond_1

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/movie/Seat;->isSelected_()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 238
    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 236
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getSelectedSeats_()Ljava/util/Vector;
    .locals 3

    .prologue
    .line 246
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 247
    .local v1, sel:Ljava/util/Vector;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    .line 252
    return-object v1

    .line 248
    :cond_0
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/ub/main/movie/Label;->isSelected_()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 247
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public loadPanel(II)V
    .locals 11
    .parameter "seatTotal"
    .parameter "cols"

    .prologue
    const/16 v10, 0xa

    const/4 v9, -0x2

    const/4 v5, 0x1

    .line 91
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->ballCt:Landroid/widget/TableLayout;

    invoke-virtual {v4}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 92
    iput p2, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    .line 93
    iget v4, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    if-lt p1, v4, :cond_0

    iget v0, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    .line 94
    .local v0, _cols:I
    :goto_0
    iget v4, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    if-lt p1, v4, :cond_1

    iget v4, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    div-int v4, p1, v4

    add-int/lit8 v4, v4, 0x1

    :goto_1
    iput v4, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    .line 95
    new-array v4, p1, [Lcom/ub/main/movie/Label;

    iput-object v4, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    .line 96
    iget v4, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    new-array v4, v4, [Landroid/widget/TableRow;

    iput-object v4, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    .line 97
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    iget v4, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    if-lt v2, v4, :cond_2

    .line 143
    return-void

    .end local v0           #_cols:I
    .end local v2           #i:I
    :cond_0
    move v0, p1

    .line 93
    goto :goto_0

    .restart local v0       #_cols:I
    :cond_1
    move v4, v5

    .line 94
    goto :goto_1

    .line 98
    .restart local v2       #i:I
    :cond_2
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    new-instance v6, Landroid/widget/TableRow;

    iget-object v7, p0, Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v2

    .line 99
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    aget-object v4, v4, v2

    invoke-virtual {v4, v10, v5, v10, v5}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 100
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->ballCt:Landroid/widget/TableLayout;

    iget-object v6, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    aget-object v6, v6, v2

    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v7, v9, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v6, v7}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v3, 0x0

    .local v3, j:I
    :goto_3
    if-lt v3, v0, :cond_3

    .line 97
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 102
    :cond_3
    mul-int v4, v2, v0

    add-int v1, v4, v3

    .line 103
    .local v1, bIndex:I
    if-ge v1, p1, :cond_4

    .line 104
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    new-instance v6, Lcom/ub/main/movie/Label;

    iget-object v7, p0, Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/ub/main/movie/Label;-><init>(Landroid/content/Context;)V

    aput-object v6, v4, v1

    .line 105
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v4, v4, v1

    iget v6, p0, Lcom/ub/main/movie/SeatSelector;->center:I

    invoke-virtual {v4, v6}, Lcom/ub/main/movie/Label;->setGravity(I)V

    .line 107
    add-int/lit8 v4, v1, 0x1

    invoke-direct {p0, v4}, Lcom/ub/main/movie/SeatSelector;->isBallSelected(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 108
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/ub/main/movie/SeatSelector;->setBallSelectedStyle(Lcom/ub/main/movie/Label;)V

    .line 112
    :goto_4
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    aget-object v4, v4, v2

    iget-object v6, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v6, v6, v1

    const/16 v7, 0x3e

    const/16 v8, 0x2b

    invoke-virtual {v4, v6, v7, v8}, Landroid/widget/TableRow;->addView(Landroid/view/View;II)V

    .line 114
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v4, v4, v1

    new-instance v6, Lcom/ub/main/movie/SeatSelector$1;

    invoke-direct {v6, p0}, Lcom/ub/main/movie/SeatSelector$1;-><init>(Lcom/ub/main/movie/SeatSelector;)V

    invoke-virtual {v4, v6}, Lcom/ub/main/movie/Label;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 110
    :cond_5
    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->seats:[Lcom/ub/main/movie/Label;

    aget-object v4, v4, v1

    invoke-direct {p0, v4}, Lcom/ub/main/movie/SeatSelector;->setBallDeselectedStyle(Lcom/ub/main/movie/Label;)V

    goto :goto_4
.end method

.method public loadPanel([[Lcom/ub/main/data/movie/SeatData;I)V
    .locals 9
    .parameter "seatMatrix"
    .parameter "layer"

    .prologue
    const/16 v8, 0xa

    const/4 v7, 0x1

    const/4 v6, -0x2

    .line 153
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->ballCt:Landroid/widget/TableLayout;

    invoke-virtual {v2}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 154
    const/4 v2, 0x0

    aget-object v2, p1, v2

    array-length v2, v2

    iput v2, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    .line 155
    array-length v2, p1

    iput v2, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    .line 157
    iget v2, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    new-array v2, v2, [[Lcom/ub/main/movie/Seat;

    iput-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    .line 158
    iget v2, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    new-array v2, v2, [Landroid/widget/TableRow;

    iput-object v2, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    .line 159
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/ub/main/movie/SeatSelector;->rows:I

    if-lt v0, v2, :cond_0

    .line 231
    return-void

    .line 160
    :cond_0
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    new-instance v3, Landroid/widget/TableRow;

    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/widget/TableRow;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v0

    .line 161
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    aget-object v2, v2, v0

    invoke-virtual {v2, v8, v7, v8, v7}, Landroid/widget/TableRow;->setPadding(IIII)V

    .line 162
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->ballCt:Landroid/widget/TableLayout;

    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    aget-object v3, v3, v0

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3, v4}, Landroid/widget/TableLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 163
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    new-array v3, v3, [Lcom/ub/main/movie/Seat;

    aput-object v3, v2, v0

    .line 164
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/ub/main/movie/SeatSelector;->cols:I

    if-lt v1, v2, :cond_1

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 165
    :cond_1
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    new-instance v3, Lcom/ub/main/movie/Seat;

    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/ub/main/movie/Seat;-><init>(Landroid/content/Context;)V

    aput-object v3, v2, v1

    .line 166
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    iget v3, p0, Lcom/ub/main/movie/SeatSelector;->center:I

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setGravity(I)V

    .line 168
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setStatus(I)V

    .line 169
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getGx()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setGx(I)V

    .line 170
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getGy()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setGy(I)V

    .line 171
    const-string v2, "jx-"

    new-instance v3, Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v4, v4, v0

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lcom/ub/main/movie/Seat;->getGx()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setType(Ljava/lang/String;)V

    .line 173
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getLovetype()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setLovetype(I)V

    .line 174
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getX()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setX(Ljava/lang/String;)V

    .line 175
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getY()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setY(Ljava/lang/String;)V

    .line 176
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    aget-object v3, p1, v0

    aget-object v3, v3, v1

    invoke-virtual {v3}, Lcom/ub/main/data/movie/SeatData;->getLayer()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setLayer(I)V

    .line 197
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    invoke-direct {p0, v2}, Lcom/ub/main/movie/SeatSelector;->setSeatStyle(Lcom/ub/main/movie/Seat;)V

    .line 199
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->tableRows:[Landroid/widget/TableRow;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v3, v3, v0

    aget-object v3, v3, v1

    const/16 v4, 0x3e

    const/16 v5, 0x2b

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;II)V

    .line 201
    iget-object v2, p0, Lcom/ub/main/movie/SeatSelector;->seats_:[[Lcom/ub/main/movie/Seat;

    aget-object v2, v2, v0

    aget-object v2, v2, v1

    new-instance v3, Lcom/ub/main/movie/SeatSelector$2;

    invoke-direct {v3, p0}, Lcom/ub/main/movie/SeatSelector$2;-><init>(Lcom/ub/main/movie/SeatSelector;)V

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/Seat;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1
.end method

.method public removeBallsInPanel()V
    .locals 1

    .prologue
    .line 259
    iget-object v0, p0, Lcom/ub/main/movie/SeatSelector;->ballCt:Landroid/widget/TableLayout;

    invoke-virtual {v0}, Landroid/widget/TableLayout;->removeAllViews()V

    .line 260
    return-void
.end method

.method public setSeatSelListener(Lcom/ub/main/movie/SeatSelectListener;)V
    .locals 0
    .parameter "seatSelListener"

    .prologue
    .line 414
    iput-object p1, p0, Lcom/ub/main/movie/SeatSelector;->seatSelListener:Lcom/ub/main/movie/SeatSelectListener;

    .line 415
    return-void
.end method

.method public setSelectedNumbers(Ljava/util/Vector;)V
    .locals 0
    .parameter "numbers"

    .prologue
    .line 406
    iput-object p1, p0, Lcom/ub/main/movie/SeatSelector;->selectedSeats:Ljava/util/Vector;

    .line 407
    return-void
.end method
