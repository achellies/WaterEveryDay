.class public Lcom/ub/main/movie/MovieSeats;
.super Lcom/ub/main/BaseActivity;
.source "MovieSeats.java"

# interfaces
.implements Lcom/ub/main/movie/SeatSelectListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static EMPHASIZE:I = 0x0

.field private static PERMISION:I = 0x0

.field private static PRIVACY:I = 0x0

.field private static final REQUEST_CINEMA_BUY:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MovieSeats"

.field private static VERSION:I

.field public static isReConnect:Z


# instance fields
.field private back:Landroid/widget/Button;

.field private cinemaAdd:Ljava/lang/String;

.field private cinemaCode:Ljava/lang/String;

.field private cinemaName:Ljava/lang/String;

.field private colnum:[Landroid/widget/TextView;

.field private context:Landroid/app/Activity;

.field private dlg:Landroid/app/ProgressDialog;

.field private fileName:Ljava/lang/String;

.field private fileTime:Ljava/lang/String;

.field private filmdate:Ljava/lang/String;

.field private filmtype:Ljava/lang/String;

.field private money:Landroid/widget/TextView;

.field private movieName:Landroid/widget/TextView;

.field private movieTime:Landroid/widget/TextView;

.field private overSelect:Landroid/widget/Button;

.field private planCode:Ljava/lang/String;

.field private popHint:Landroid/widget/LinearLayout;

.field private price:F

.field private seatSelector:Lcom/ub/main/movie/SeatSelector;

.field private seatcol:Landroid/widget/LinearLayout;

.field private selSeatNum:Landroid/widget/TextView;

.field private sid:Ljava/lang/String;

.field private theater:Landroid/widget/TextView;

.field private url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    sput v1, Lcom/ub/main/movie/MovieSeats;->VERSION:I

    .line 42
    sget v0, Lcom/ub/main/movie/MovieSeats;->VERSION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/movie/MovieSeats;->PERMISION:I

    .line 43
    sget v0, Lcom/ub/main/movie/MovieSeats;->PERMISION:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/movie/MovieSeats;->PRIVACY:I

    .line 44
    sget v0, Lcom/ub/main/movie/MovieSeats;->PRIVACY:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/movie/MovieSeats;->EMPHASIZE:I

    .line 56
    sput-boolean v1, Lcom/ub/main/movie/MovieSeats;->isReConnect:Z

    .line 38
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->context:Landroid/app/Activity;

    .line 50
    const/high16 v0, 0x42a0

    iput v0, p0, Lcom/ub/main/movie/MovieSeats;->price:F

    .line 53
    const-string v0, "002370"

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    const-string v0, "00237020110618002226"

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->sid:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->fileTime:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->fileName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->cinemaName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->cinemaAdd:Ljava/lang/String;

    .line 54
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->filmdate:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieSeats;->filmtype:Ljava/lang/String;

    .line 38
    return-void
.end method

.method private getSeatMatrix(Ljava/util/ArrayList;III)[[Lcom/ub/main/data/movie/SeatData;
    .locals 8
    .parameter
    .parameter "layer"
    .parameter "maxRow"
    .parameter "maxCol"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/movie/SeatData;",
            ">;III)[[",
            "Lcom/ub/main/data/movie/SeatData;"
        }
    .end annotation

    .prologue
    .line 164
    .local p1, seats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/SeatData;>;"
    filled-new-array {p3, p4}, [I

    move-result-object v5

    const-class v6, Lcom/ub/main/data/movie/SeatData;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[Lcom/ub/main/data/movie/SeatData;

    .line 165
    .local v4, seatMatrix:[[Lcom/ub/main/data/movie/SeatData;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, p3, :cond_0

    .line 173
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lt v2, v5, :cond_2

    .line 178
    return-object v4

    .line 167
    :cond_0
    const/4 v3, 0x0

    .local v3, j:I
    :goto_2
    if-lt v3, p4, :cond_1

    .line 165
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 168
    :cond_1
    aget-object v5, v4, v2

    new-instance v6, Lcom/ub/main/data/movie/SeatData;

    invoke-direct {v6}, Lcom/ub/main/data/movie/SeatData;-><init>()V

    aput-object v6, v5, v3

    .line 169
    aget-object v5, v4, v2

    aget-object v5, v5, v3

    invoke-virtual {v5, p2}, Lcom/ub/main/data/movie/SeatData;->setLayer(I)V

    .line 167
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 174
    .end local v3           #j:I
    :cond_2
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ub/main/data/movie/SeatData;

    invoke-virtual {v5}, Lcom/ub/main/data/movie/SeatData;->getGx()I

    move-result v0

    .line 175
    .local v0, gx:I
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ub/main/data/movie/SeatData;

    invoke-virtual {v5}, Lcom/ub/main/data/movie/SeatData;->getGy()I

    move-result v1

    .line 176
    .local v1, gy:I
    add-int/lit8 v5, v0, -0x1

    aget-object v6, v4, v5

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/ub/main/data/movie/SeatData;

    aput-object v5, v6, v7

    .line 173
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private initModle()V
    .locals 0

    .prologue
    .line 147
    return-void
.end method

.method private initView()V
    .locals 6

    .prologue
    .line 94
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 95
    .local v1, head:Landroid/view/ViewGroup;
    const v3, 0x7f080142

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->back:Landroid/widget/Button;

    .line 96
    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->back:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    const v3, 0x7f080141

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 98
    .local v2, title1:Landroid/widget/TextView;
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    const-string v3, "\u9009\u5ea7"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    const v3, 0x7f08012f

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->popHint:Landroid/widget/LinearLayout;

    .line 103
    const v3, 0x7f080130

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->selSeatNum:Landroid/widget/TextView;

    .line 104
    const v3, 0x7f08008b

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->money:Landroid/widget/TextView;

    .line 105
    const v3, 0x7f080131

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->movieTime:Landroid/widget/TextView;

    .line 106
    const v3, 0x7f080132

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->movieName:Landroid/widget/TextView;

    .line 107
    const v3, 0x7f080133

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->theater:Landroid/widget/TextView;

    .line 109
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->fileTime:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 110
    .local v0, buffer:Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    const-string v4, ":"

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->movieTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->movieName:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ub/main/movie/MovieSeats;->fileName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->theater:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5730\u5740\uff1a"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->cinemaAdd:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const v3, 0x7f08012b

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->seatcol:Landroid/widget/LinearLayout;

    .line 116
    const v3, 0x7f08012e

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/ub/main/movie/SeatSelector;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->seatSelector:Lcom/ub/main/movie/SeatSelector;

    .line 117
    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->seatSelector:Lcom/ub/main/movie/SeatSelector;

    invoke-virtual {v3, p0}, Lcom/ub/main/movie/SeatSelector;->setSeatSelListener(Lcom/ub/main/movie/SeatSelectListener;)V

    .line 123
    const v3, 0x7f080134

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieSeats;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/ub/main/movie/MovieSeats;->overSelect:Landroid/widget/Button;

    .line 124
    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->overSelect:Landroid/widget/Button;

    invoke-virtual {v3, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method private loadColNum(I)V
    .locals 6
    .parameter "row"

    .prologue
    const/16 v5, 0x2d

    const/16 v4, 0x1a

    .line 128
    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->seatcol:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 129
    new-array v1, p1, [Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/movie/MovieSeats;->colnum:[Landroid/widget/TextView;

    .line 130
    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->seatcol:Landroid/widget/LinearLayout;

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 131
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-lt v0, p1, :cond_0

    .line 143
    return-void

    .line 132
    :cond_0
    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->colnum:[Landroid/widget/TextView;

    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    aput-object v2, v1, v0

    .line 133
    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->colnum:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 134
    const/16 v1, 0x9

    if-ge v0, v1, :cond_1

    .line 135
    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->colnum:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "0"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    :goto_1
    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->seatcol:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/ub/main/movie/MovieSeats;->colnum:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;II)V

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 137
    :cond_1
    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->colnum:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private reqestSeatStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .parameter "cinemaCode"
    .parameter "planCode"

    .prologue
    .line 155
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_SEAT_STATUS:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 156
    invoke-static {p1, p2}, Lcom/ub/main/util/NetConfig;->createMovieSeatPostString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 157
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u5ea7\u4f4d\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 155
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieSeats;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 159
    return-void
.end method


# virtual methods
.method public BackTolastActivity(Landroid/view/View;)V
    .locals 0
    .parameter "view"

    .prologue
    .line 187
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->finish()V

    .line 188
    return-void
.end method

.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    .line 317
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->dlg:Landroid/app/ProgressDialog;

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 318
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->dlg:Landroid/app/ProgressDialog;

    invoke-virtual {v8}, Landroid/app/ProgressDialog;->dismiss()V

    .line 320
    :cond_0
    const-string v8, "200"

    invoke-virtual {p2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 321
    new-instance v4, Lcom/ub/main/data/movie/MovieSeatBean;

    invoke-direct {v4}, Lcom/ub/main/data/movie/MovieSeatBean;-><init>()V

    .line 322
    .local v4, seatBean:Lcom/ub/main/data/movie/MovieSeatBean;
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "allLayer"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    .line 323
    .local v7, totalLayer:I
    invoke-virtual {v4, v7}, Lcom/ub/main/data/movie/MovieSeatBean;->setTotalLayer(I)V

    .line 324
    new-instance v5, Lcom/ub/main/data/movie/SeatData;

    invoke-direct {v5}, Lcom/ub/main/data/movie/SeatData;-><init>()V

    .line 325
    .local v5, seatData:Lcom/ub/main/data/movie/SeatData;
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonObject:Lorg/json/JSONObject;

    const-string v9, "seatList"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    iput-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    .line 326
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 327
    .local v3, len:I
    const/4 v0, 0x0

    .local v0, gx:I
    const/4 v1, 0x0

    .line 328
    .local v1, gy:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-lt v2, v3, :cond_1

    .line 345
    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/ub/main/data/movie/MovieSeatBean;->getSeatList(I)Ljava/util/ArrayList;

    move-result-object v6

    .line 346
    .local v6, seats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/SeatData;>;"
    if-eqz v6, :cond_4

    .line 347
    invoke-virtual {v4}, Lcom/ub/main/data/movie/MovieSeatBean;->getMaxX()I

    move-result v8

    invoke-direct {p0, v8}, Lcom/ub/main/movie/MovieSeats;->loadColNum(I)V

    .line 348
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->seatSelector:Lcom/ub/main/movie/SeatSelector;

    .line 350
    invoke-virtual {v4}, Lcom/ub/main/data/movie/MovieSeatBean;->getMaxX()I

    move-result v9

    .line 351
    invoke-virtual {v4}, Lcom/ub/main/data/movie/MovieSeatBean;->getMaxY()I

    move-result v10

    .line 349
    invoke-direct {p0, v6, v11, v9, v10}, Lcom/ub/main/movie/MovieSeats;->getSeatMatrix(Ljava/util/ArrayList;III)[[Lcom/ub/main/data/movie/SeatData;

    move-result-object v9

    .line 348
    invoke-virtual {v8, v9, v11}, Lcom/ub/main/movie/SeatSelector;->loadPanel([[Lcom/ub/main/data/movie/SeatData;I)V

    .line 382
    .end local v0           #gx:I
    .end local v1           #gy:I
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #seatBean:Lcom/ub/main/data/movie/MovieSeatBean;
    .end local v5           #seatData:Lcom/ub/main/data/movie/SeatData;
    .end local v6           #seats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/SeatData;>;"
    .end local v7           #totalLayer:I
    :goto_1
    return-void

    .line 329
    .restart local v0       #gx:I
    .restart local v1       #gy:I
    .restart local v2       #i:I
    .restart local v3       #len:I
    .restart local v4       #seatBean:Lcom/ub/main/data/movie/MovieSeatBean;
    .restart local v5       #seatData:Lcom/ub/main/data/movie/SeatData;
    .restart local v7       #totalLayer:I
    :cond_1
    new-instance v5, Lcom/ub/main/data/movie/SeatData;

    .end local v5           #seatData:Lcom/ub/main/data/movie/SeatData;
    invoke-direct {v5}, Lcom/ub/main/data/movie/SeatData;-><init>()V

    .line 330
    .restart local v5       #seatData:Lcom/ub/main/data/movie/SeatData;
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "gx"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 331
    invoke-virtual {v5, v0}, Lcom/ub/main/data/movie/SeatData;->setGx(I)V

    .line 332
    invoke-virtual {v4}, Lcom/ub/main/data/movie/MovieSeatBean;->getMaxX()I

    move-result v8

    if-le v0, v8, :cond_2

    move v8, v0

    :goto_2
    invoke-virtual {v4, v8}, Lcom/ub/main/data/movie/MovieSeatBean;->setMaxX(I)V

    .line 333
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "gy"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 334
    invoke-virtual {v5, v1}, Lcom/ub/main/data/movie/SeatData;->setGy(I)V

    .line 335
    invoke-virtual {v4}, Lcom/ub/main/data/movie/MovieSeatBean;->getMaxY()I

    move-result v8

    if-le v1, v8, :cond_3

    move v8, v1

    :goto_3
    invoke-virtual {v4, v8}, Lcom/ub/main/data/movie/MovieSeatBean;->setMaxY(I)V

    .line 336
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "layer"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ub/main/data/movie/SeatData;->setLayer(Ljava/lang/String;)V

    .line 337
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "lovetype"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ub/main/data/movie/SeatData;->setLovetype(Ljava/lang/String;)V

    .line 338
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "status"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ub/main/data/movie/SeatData;->setStatus(Ljava/lang/String;)V

    .line 339
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ub/main/data/movie/SeatData;->setType(Ljava/lang/String;)V

    .line 340
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "x"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ub/main/data/movie/SeatData;->setX(Ljava/lang/String;)V

    .line 341
    iget-object v8, p0, Lcom/ub/main/movie/MovieSeats;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v8, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "y"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/ub/main/data/movie/SeatData;->setY(Ljava/lang/String;)V

    .line 342
    invoke-virtual {v5}, Lcom/ub/main/data/movie/SeatData;->getLayer()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v4, v8, v5}, Lcom/ub/main/data/movie/MovieSeatBean;->addSeat(ILcom/ub/main/data/movie/SeatData;)V

    .line 328
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 332
    :cond_2
    invoke-virtual {v4}, Lcom/ub/main/data/movie/MovieSeatBean;->getMaxX()I

    move-result v8

    goto/16 :goto_2

    .line 335
    :cond_3
    invoke-virtual {v4}, Lcom/ub/main/data/movie/MovieSeatBean;->getMaxY()I

    move-result v8

    goto :goto_3

    .line 355
    .restart local v6       #seats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/SeatData;>;"
    :cond_4
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 356
    const-string v9, "\u63d0\u793a"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 357
    const-string v9, "\u5f53\u524d\u573a\u6b21\u7684\u5ea7\u4f4d\u5df2\u552e\u5b8c\uff01"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 358
    const-string v9, "\u8fd4\u56de"

    .line 359
    new-instance v10, Lcom/ub/main/movie/MovieSeats$1;

    invoke-direct {v10, p0}, Lcom/ub/main/movie/MovieSeats$1;-><init>(Lcom/ub/main/movie/MovieSeats;)V

    .line 358
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 366
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1

    .line 369
    .end local v0           #gx:I
    .end local v1           #gy:I
    .end local v2           #i:I
    .end local v3           #len:I
    .end local v4           #seatBean:Lcom/ub/main/data/movie/MovieSeatBean;
    .end local v5           #seatData:Lcom/ub/main/data/movie/SeatData;
    .end local v6           #seats:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/SeatData;>;"
    .end local v7           #totalLayer:I
    :cond_5
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-direct {v8, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 370
    const-string v9, "\u63d0\u793a"

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 371
    invoke-virtual {v8, p3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 372
    const-string v9, "\u8fd4\u56de"

    .line 373
    new-instance v10, Lcom/ub/main/movie/MovieSeats$2;

    invoke-direct {v10, p0}, Lcom/ub/main/movie/MovieSeats$2;-><init>(Lcom/ub/main/movie/MovieSeats;)V

    .line 372
    invoke-virtual {v8, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v8

    .line 380
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method public NullClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 301
    const-string v0, "nullclick"

    const-string v1, "nullclick"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    return-void
.end method

.method public getCinemaCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlanCode()Ljava/lang/String;
    .locals 1

    .prologue
    .line 293
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 307
    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 308
    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieSeats;->setResult(I)V

    .line 309
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->finish()V

    .line 311
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 235
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    .line 266
    :goto_0
    return-void

    .line 237
    :sswitch_0
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->finish()V

    goto :goto_0

    .line 240
    :sswitch_1
    iget-object v4, p0, Lcom/ub/main/movie/MovieSeats;->seatSelector:Lcom/ub/main/movie/SeatSelector;

    invoke-virtual {v4}, Lcom/ub/main/movie/SeatSelector;->getSelectedSeats()Ljava/util/Vector;

    move-result-object v3

    .line 241
    .local v3, seats:Ljava/util/Vector;
    const-string v2, ""

    .line 242
    .local v2, seatList:Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    if-lt v1, v4, :cond_0

    .line 246
    const-string v4, "seatList"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 250
    .local v0, bundle:Landroid/os/Bundle;
    const-string v4, "cinema_code"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    const-string v4, "plan_code"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v4, "sid"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->sid:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const-string v4, "seat_list"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string v4, "seat_layer"

    const-string v5, "01"

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string v4, "date"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->filmdate:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    const-string v4, "type"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->filmtype:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    const-string v4, "cinema_name"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->cinemaName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    const-string v4, "film_name"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->fileName:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const-string v4, "money"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->money:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    const-string v4, "time"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->fileTime:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    const-string v4, "url"

    iget-object v5, p0, Lcom/ub/main/movie/MovieSeats;->url:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const-class v4, Lcom/ub/main/movie/MovieBuy;

    invoke-static {p0, v4, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 243
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ub/main/movie/Seat;

    invoke-virtual {v4}, Lcom/ub/main/movie/Seat;->getX()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/ub/main/movie/Seat;

    invoke-virtual {v4}, Lcom/ub/main/movie/Seat;->getY()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-eq v1, v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, "|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 235
    :sswitch_data_0
    .sparse-switch
        0x7f080134 -> :sswitch_1
        0x7f080142 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/ub/main/movie/MovieSeats;->requestWindowFeature(I)Z

    .line 61
    const v2, 0x7f03003c

    invoke-virtual {p0, v2}, Lcom/ub/main/movie/MovieSeats;->setContentView(I)V

    .line 62
    iput-object p0, p0, Lcom/ub/main/movie/MovieSeats;->context:Landroid/app/Activity;

    .line 65
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 66
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "cinema_code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    .line 67
    const-string v2, "plan_code"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    .line 68
    const-string v2, "time"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->fileTime:Ljava/lang/String;

    .line 69
    const-string v2, "film_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->fileName:Ljava/lang/String;

    .line 70
    const-string v2, "cinema_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->cinemaName:Ljava/lang/String;

    .line 71
    const-string v2, "cinema_District"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->cinemaAdd:Ljava/lang/String;

    .line 72
    const-string v2, "price"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, filePrice:Ljava/lang/String;
    const-string v2, "date"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->filmdate:Ljava/lang/String;

    .line 74
    const-string v2, "type"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->filmtype:Ljava/lang/String;

    .line 75
    const-string v2, "url"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->url:Ljava/lang/String;

    .line 76
    const-string v2, "sid"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/ub/main/movie/MovieSeats;->sid:Ljava/lang/String;

    .line 77
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    const-string v2, "price"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/ub/main/movie/MovieSeats;->price:F

    .line 78
    :cond_0
    iget-object v2, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 79
    iget-object v2, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/ub/main/movie/MovieSeats;->reqestSeatStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 226
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 227
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->finish()V

    .line 228
    const/4 v0, 0x1

    .line 230
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onResume()V

    .line 86
    invoke-direct {p0}, Lcom/ub/main/movie/MovieSeats;->initView()V

    .line 87
    sget-boolean v0, Lcom/ub/main/movie/MovieSeats;->isReConnect:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ub/main/movie/MovieSeats;->isReConnect:Z

    .line 89
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    iget-object v1, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/ub/main/movie/MovieSeats;->reqestSeatStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 191
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieSeats;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    :goto_0
    return v1

    .line 201
    :cond_0
    invoke-super {p0, p2}, Lcom/ub/main/BaseActivity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0
.end method

.method public seatsClickHandler(Lcom/ub/main/movie/Label;I)V
    .locals 4
    .parameter "seat"
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 269
    if-nez p2, :cond_1

    .line 270
    invoke-virtual {p1}, Lcom/ub/main/movie/Label;->isSelected_()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->popHint:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 272
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->selSeatNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->money:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-float v2, p2

    iget v3, p0, Lcom/ub/main/movie/MovieSeats;->price:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_0
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->popHint:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 278
    :cond_1
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->popHint:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->selSeatNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->money:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-float v2, p2

    iget v3, p0, Lcom/ub/main/movie/MovieSeats;->price:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public seatsClickHandler(Lcom/ub/main/movie/Seat;I)V
    .locals 4
    .parameter "seat"
    .parameter "num"

    .prologue
    const/4 v1, 0x0

    .line 208
    if-nez p2, :cond_2

    .line 209
    invoke-virtual {p1}, Lcom/ub/main/movie/Seat;->isSelected_()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->popHint:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 211
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->selSeatNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 212
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->money:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-float v2, p2

    iget v3, p0, Lcom/ub/main/movie/MovieSeats;->price:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->popHint:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 216
    :cond_2
    if-lez p2, :cond_0

    .line 217
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->popHint:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->selSeatNum:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 219
    iget-object v0, p0, Lcom/ub/main/movie/MovieSeats;->money:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    int-to-float v2, p2

    iget v3, p0, Lcom/ub/main/movie/MovieSeats;->price:F

    mul-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/Tool;->getDimecalPrice(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setCinemaCode(Ljava/lang/String;)V
    .locals 0
    .parameter "cinemaCode"

    .prologue
    .line 289
    iput-object p1, p0, Lcom/ub/main/movie/MovieSeats;->cinemaCode:Ljava/lang/String;

    .line 290
    return-void
.end method

.method public setPlanCode(Ljava/lang/String;)V
    .locals 0
    .parameter "planCode"

    .prologue
    .line 297
    iput-object p1, p0, Lcom/ub/main/movie/MovieSeats;->planCode:Ljava/lang/String;

    .line 298
    return-void
.end method
