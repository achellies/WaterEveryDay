.class public Lcom/ub/main/movie/MovieHome;
.super Lcom/ub/main/BaseActivity;
.source "MovieHome.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ub/main/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;"
    }
.end annotation


# static fields
.field private static final REQUEST_CINEMA:I


# instance fields
.field private actor:Landroid/widget/TextView;

.field private adapter:Lcom/ub/main/movie/ImageAdapter2;

.field private back:Landroid/widget/Button;

.field private city:Landroid/widget/Button;

.field private filmData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/movie/CityFilmData;",
            ">;"
        }
    .end annotation
.end field

.field private galleryFlow:Lcom/ub/main/movie/GalleryFlow;

.field private handler:Landroid/os/Handler;

.field private head:Landroid/view/ViewGroup;

.field private heraldButton:Landroid/widget/Button;

.field private msgId:I

.field private mvImages:[Landroid/graphics/Bitmap;

.field private mvTitle:Landroid/widget/TextView;

.field private popcitylist:Lcom/ub/main/movie/PopCitylist;

.field private state:Landroid/widget/TextView;

.field private ticketButton:Landroid/widget/Button;

.field private time:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;

.field private type:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 77
    const/16 v0, 0x6f

    iput v0, p0, Lcom/ub/main/movie/MovieHome;->msgId:I

    .line 298
    new-instance v0, Lcom/ub/main/movie/MovieHome$1;

    invoke-direct {v0, p0}, Lcom/ub/main/movie/MovieHome$1;-><init>(Lcom/ub/main/movie/MovieHome;)V

    iput-object v0, p0, Lcom/ub/main/movie/MovieHome;->handler:Landroid/os/Handler;

    .line 36
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/movie/MovieHome;)I
    .locals 1
    .parameter

    .prologue
    .line 77
    iget v0, p0, Lcom/ub/main/movie/MovieHome;->msgId:I

    return v0
.end method

.method static synthetic access$1(Lcom/ub/main/movie/MovieHome;)Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 44
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/movie/MovieHome;Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 294
    invoke-direct {p0, p1, p2}, Lcom/ub/main/movie/MovieHome;->request(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V

    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v0, p0}, Lcom/ub/main/movie/GalleryFlow;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 166
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v0, p0}, Lcom/ub/main/movie/GalleryFlow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 167
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->heraldButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->ticketButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 169
    return-void
.end method

.method private initModel()V
    .locals 6

    .prologue
    .line 152
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CITY:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 153
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/ub/main/util/NetConfig;->createMovieCityFilmPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 154
    const/4 v5, 0x0

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 152
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 155
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 102
    const/high16 v1, 0x7f08

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->head:Landroid/view/ViewGroup;

    .line 103
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->head:Landroid/view/ViewGroup;

    const v2, 0x7f080142

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->back:Landroid/widget/Button;

    .line 104
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->back:Landroid/widget/Button;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->back:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 105
    :cond_0
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->head:Landroid/view/ViewGroup;

    const v2, 0x7f080143

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    .line 106
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 107
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 111
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->head:Landroid/view/ViewGroup;

    const v2, 0x7f080141

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->title:Landroid/widget/TextView;

    .line 112
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->title:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 113
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->title:Landroid/widget/TextView;

    const-string v2, "\u7535\u5f71\u7968"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    const/4 v1, 0x6

    new-array v1, v1, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    .line 116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v0, v1, :cond_2

    .line 120
    new-instance v1, Lcom/ub/main/movie/ImageAdapter2;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v2, v3}, Lcom/ub/main/movie/ImageAdapter2;-><init>(Landroid/app/Activity;[Landroid/graphics/Bitmap;[Ljava/lang/String;)V

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    .line 122
    const v1, 0x7f080139

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/ub/main/movie/GalleryFlow;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    .line 123
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    const/16 v2, 0x14

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/GalleryFlow;->setSpacing(I)V

    .line 124
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/GalleryFlow;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 125
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    invoke-virtual {v2}, Lcom/ub/main/movie/ImageAdapter2;->getCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/GalleryFlow;->setSelection(I)V

    .line 126
    sget v1, Lcom/ub/main/util/UIConfig;->SCREEN_HEIGHT:I

    const/16 v2, 0x1e0

    if-gt v1, v2, :cond_1

    .line 127
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    const/16 v2, -0x15e

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/GalleryFlow;->setMaxZoom(I)V

    .line 131
    :cond_1
    const v1, 0x7f080098

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvTitle:Landroid/widget/TextView;

    .line 133
    const v1, 0x7f08013a

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->state:Landroid/widget/TextView;

    .line 134
    const v1, 0x7f08013c

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->type:Landroid/widget/TextView;

    .line 135
    const v1, 0x7f08013d

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->time:Landroid/widget/TextView;

    .line 136
    const v1, 0x7f08013b

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->actor:Landroid/widget/TextView;

    .line 138
    const v1, 0x7f08013e

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->heraldButton:Landroid/widget/Button;

    .line 139
    const v1, 0x7f08013f

    invoke-virtual {p0, v1}, Lcom/ub/main/movie/MovieHome;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->ticketButton:Landroid/widget/Button;

    .line 142
    new-instance v1, Lcom/ub/main/movie/PopCitylist;

    invoke-direct {v1, p0}, Lcom/ub/main/movie/PopCitylist;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->popcitylist:Lcom/ub/main/movie/PopCitylist;

    .line 143
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->popcitylist:Lcom/ub/main/movie/PopCitylist;

    iget v2, p0, Lcom/ub/main/movie/MovieHome;->msgId:I

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/PopCitylist;->setMsgId(I)V

    .line 144
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->popcitylist:Lcom/ub/main/movie/PopCitylist;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/PopCitylist;->setHandler(Landroid/os/Handler;)V

    .line 145
    return-void

    .line 117
    :cond_2
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ub/main/movie/MovieHome;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020098

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v0

    .line 116
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0
.end method

.method private noMovieWarning(Ljava/lang/String;)V
    .locals 5
    .parameter "message"

    .prologue
    .line 444
    const/4 v2, 0x6

    new-array v2, v2, [Landroid/graphics/Bitmap;

    iput-object v2, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    .line 445
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 448
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ub/main/movie/ImageAdapter2;->setImages([Landroid/graphics/Bitmap;[Ljava/lang/String;)V

    .line 449
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    invoke-virtual {v2}, Lcom/ub/main/movie/ImageAdapter2;->notifyDataSetChanged()V

    .line 450
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v3}, Lcom/ub/main/movie/GalleryFlow;->getCount()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v2, v3}, Lcom/ub/main/movie/GalleryFlow;->setSelection(I)V

    .line 452
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->mvTitle:Landroid/widget/TextView;

    const-string v3, "\u7535\u5f71\u7968"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 454
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->state:Landroid/widget/TextView;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->type:Landroid/widget/TextView;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->time:Landroid/widget/TextView;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 457
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->actor:Landroid/widget/TextView;

    const-string v3, " "

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 459
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 461
    :cond_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 462
    const-string v3, "\u63d0\u793a"

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 463
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 464
    const-string v3, "\u786e\u5b9a"

    .line 465
    new-instance v4, Lcom/ub/main/movie/MovieHome$4;

    invoke-direct {v4, p0}, Lcom/ub/main/movie/MovieHome$4;-><init>(Lcom/ub/main/movie/MovieHome;)V

    .line 464
    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 470
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v0

    .line 471
    .local v0, dialog:Landroid/app/AlertDialog;
    return-void

    .line 446
    .end local v0           #dialog:Landroid/app/AlertDialog;
    :cond_1
    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ub/main/movie/MovieHome;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020098

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    aput-object v3, v2, v1

    .line 445
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private request(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;)V
    .locals 6
    .parameter "requestId"
    .parameter "postString"

    .prologue
    .line 295
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 296
    return-void
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 14
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 368
    const-string v1, "200"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 370
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CITY:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 372
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "provinceList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    .line 373
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 374
    .local v11, len:I
    new-array v1, v11, [Ljava/lang/String;

    sput-object v1, Lcom/ub/main/util/UIConfig;->netProvinces:[Ljava/lang/String;

    .line 375
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-lt v10, v11, :cond_1

    .line 381
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "cinema_city"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 382
    sget-object v2, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CITY_FILM:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 383
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/ub/main/util/NetConfig;->createMovieCityFilmPostString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 384
    const-string v6, "\u6b63\u5728\u83b7\u53d6\u6570\u636e..."

    move-object v1, p0

    move-object v4, p0

    move-object v5, p0

    .line 382
    invoke-virtual/range {v1 .. v6}, Lcom/ub/main/movie/MovieHome;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 441
    .end local v10           #i:I
    .end local v11           #len:I
    :cond_0
    :goto_1
    return-void

    .line 376
    .restart local v10       #i:I
    .restart local v11       #len:I
    :cond_1
    sget-object v1, Lcom/ub/main/util/UIConfig;->netProvinces:[Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v2, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "cinema_province"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    .line 377
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "cinema_city"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 378
    .local v9, citys:Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {v9, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 379
    .local v7, aCity:[Ljava/lang/String;
    sget-object v1, Lcom/ub/main/util/UIConfig;->netCitys:Ljava/util/Hashtable;

    sget-object v2, Lcom/ub/main/util/UIConfig;->netProvinces:[Ljava/lang/String;

    aget-object v2, v2, v10

    invoke-virtual {v1, v2, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 375
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 386
    .end local v7           #aCity:[Ljava/lang/String;
    .end local v9           #citys:Ljava/lang/String;
    .end local v10           #i:I
    .end local v11           #len:I
    :cond_2
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CITY_FILM:Lcom/ub/main/util/NetConfig$HttpRequestId;

    invoke-virtual {v1, p1}, Lcom/ub/main/util/NetConfig$HttpRequestId;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonObject:Lorg/json/JSONObject;

    const-string v2, "filmList"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    .line 388
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    .line 389
    .restart local v11       #len:I
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    if-eqz v1, :cond_3

    .line 390
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_2
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v10, v1, :cond_4

    .line 395
    .end local v10           #i:I
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    .line 396
    new-array v13, v11, [Ljava/lang/String;

    .line 397
    .local v13, url:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 398
    .local v8, cityFilmData:Lcom/ub/main/data/movie/CityFilmData;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    .line 399
    const/4 v12, 0x0

    .line 400
    .local v12, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    const/4 v10, 0x0

    .restart local v10       #i:I
    :goto_3
    if-lt v10, v11, :cond_5

    .line 419
    new-array v1, v11, [Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    .line 420
    const/4 v10, 0x0

    :goto_4
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    array-length v1, v1

    if-lt v10, v1, :cond_6

    .line 424
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v13}, Lcom/ub/main/movie/ImageAdapter2;->setImages([Landroid/graphics/Bitmap;[Ljava/lang/String;)V

    .line 425
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    invoke-virtual {v1}, Lcom/ub/main/movie/ImageAdapter2;->notifyDataSetChanged()V

    .line 426
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->adapter:Lcom/ub/main/movie/ImageAdapter2;

    invoke-virtual {v2}, Lcom/ub/main/movie/ImageAdapter2;->getCount()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Lcom/ub/main/movie/GalleryFlow;->setSelection(I)V

    .line 428
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 429
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v2}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmName()Ljava/lang/String;

    move-result-object v2

    .line 430
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v3}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmDoctor()Ljava/lang/String;

    move-result-object v3

    .line 431
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v4}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmType()Ljava/lang/String;

    move-result-object v4

    .line 432
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v5}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmTime()Ljava/lang/String;

    move-result-object v5

    .line 433
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v6}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmActor()Ljava/lang/String;

    move-result-object v6

    move-object v1, p0

    .line 429
    invoke-virtual/range {v1 .. v6}, Lcom/ub/main/movie/MovieHome;->updateMovieInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 391
    .end local v8           #cityFilmData:Lcom/ub/main/data/movie/CityFilmData;
    .end local v12           #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    .end local v13           #url:[Ljava/lang/String;
    :cond_4
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    aget-object v1, v1, v10

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 392
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    aput-object v2, v1, v10

    .line 390
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .line 401
    .restart local v8       #cityFilmData:Lcom/ub/main/data/movie/CityFilmData;
    .restart local v12       #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    .restart local v13       #url:[Ljava/lang/String;
    :cond_5
    new-instance v8, Lcom/ub/main/data/movie/CityFilmData;

    .end local v8           #cityFilmData:Lcom/ub/main/data/movie/CityFilmData;
    invoke-direct {v8}, Lcom/ub/main/data/movie/CityFilmData;-><init>()V

    .line 402
    .restart local v8       #cityFilmData:Lcom/ub/main/data/movie/CityFilmData;
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmId(Ljava/lang/String;)V

    .line 403
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_name"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmName(Ljava/lang/String;)V

    .line 404
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_lang"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmLang(Ljava/lang/String;)V

    .line 405
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_fee"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmFee(Ljava/lang/String;)V

    .line 406
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_type"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmType(Ljava/lang/String;)V

    .line 407
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_time"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmTime(Ljava/lang/String;)V

    .line 408
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_streaming"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmViewUrl(Ljava/lang/String;)V

    .line 409
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_desc"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmInfo(Ljava/lang/String;)V

    .line 410
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_pic"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmPicUrl(Ljava/lang/String;)V

    .line 411
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_pic"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v13, v10

    .line 412
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_star"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmActor(Ljava/lang/String;)V

    .line 413
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "film_director"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmDoctor(Ljava/lang/String;)V

    .line 414
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "plan_date"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setFilmDate(Ljava/lang/String;)V

    .line 415
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "noplan_date"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/ub/main/data/movie/CityFilmData;->setNoPlanDate(Ljava/lang/String;)V

    .line 416
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 400
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 422
    :cond_6
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->mvImages:[Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Lcom/ub/main/movie/MovieHome;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020098

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    aput-object v2, v1, v10

    .line 420
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 435
    :cond_7
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/ub/main/movie/MovieHome;->noMovieWarning(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 439
    .end local v8           #cityFilmData:Lcom/ub/main/data/movie/CityFilmData;
    .end local v10           #i:I
    .end local v11           #len:I
    .end local v12           #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    .end local v13           #url:[Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p3

    invoke-direct {p0, v0}, Lcom/ub/main/movie/MovieHome;->noMovieWarning(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "arg0"

    .prologue
    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 254
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 193
    :sswitch_1
    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    if-nez v3, :cond_2

    .line 195
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 196
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 197
    const-string v4, "\u8be5\u5f71\u7247\u6ca1\u6709\u9884\u544a\u7247!"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 198
    const-string v4, "\u786e\u5b9a"

    .line 199
    new-instance v5, Lcom/ub/main/movie/MovieHome$2;

    invoke-direct {v5, p0}, Lcom/ub/main/movie/MovieHome$2;-><init>(Lcom/ub/main/movie/MovieHome;)V

    .line 198
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 204
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 195
    .local v1, dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 206
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_2
    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v4}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v3}, Lcom/ub/main/data/movie/CityFilmData;->getFilmViewUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 207
    .local v2, url:Ljava/lang/String;
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 208
    :cond_3
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 209
    const-string v4, "\u63d0\u793a"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 210
    const-string v4, "\u8be5\u5f71\u7247\u6ca1\u6709\u9884\u544a\u7247!"

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 211
    const-string v4, "\u786e\u5b9a"

    .line 212
    new-instance v5, Lcom/ub/main/movie/MovieHome$3;

    invoke-direct {v5, p0}, Lcom/ub/main/movie/MovieHome$3;-><init>(Lcom/ub/main/movie/MovieHome;)V

    .line 211
    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    .line 208
    .restart local v1       #dialog:Landroid/app/AlertDialog;
    goto :goto_0

    .line 219
    .end local v1           #dialog:Landroid/app/AlertDialog;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 220
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "url"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-class v3, Lcom/ub/main/movie/MoviePlayer;

    invoke-static {p0, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    goto/16 :goto_0

    .line 226
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v2           #url:Ljava/lang/String;
    :sswitch_2
    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 238
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 239
    .restart local v0       #bundle:Landroid/os/Bundle;
    const-string v4, "filmId"

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v5}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v3}, Lcom/ub/main/data/movie/CityFilmData;->getFilmId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const-string v4, "date"

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v5}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v3}, Lcom/ub/main/data/movie/CityFilmData;->getFilmDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "city"

    iget-object v4, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    invoke-virtual {v4}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    const-string v4, "name"

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v5}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v3}, Lcom/ub/main/data/movie/CityFilmData;->getFilmName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v4, "noplan"

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v5}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v3}, Lcom/ub/main/data/movie/CityFilmData;->getNoPlanDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    const-class v3, Lcom/ub/main/movie/MovieCinema;

    const/4 v4, 0x0

    invoke-static {p0, v3, v4, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    goto/16 :goto_0

    .line 248
    .end local v0           #bundle:Landroid/os/Bundle;
    :sswitch_3
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieHome;->finish()V

    goto/16 :goto_0

    .line 251
    :sswitch_4
    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->popcitylist:Lcom/ub/main/movie/PopCitylist;

    invoke-virtual {v3}, Lcom/ub/main/movie/PopCitylist;->show()V

    goto/16 :goto_0

    .line 189
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080000 -> :sswitch_0
        0x7f08013e -> :sswitch_1
        0x7f08013f -> :sswitch_2
        0x7f080142 -> :sswitch_3
        0x7f080143 -> :sswitch_4
    .end sparse-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const v0, 0x7f03003e

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieHome;->setContentView(I)V

    .line 91
    invoke-direct {p0}, Lcom/ub/main/movie/MovieHome;->initView()V

    .line 92
    invoke-direct {p0}, Lcom/ub/main/movie/MovieHome;->initModel()V

    .line 93
    invoke-direct {p0}, Lcom/ub/main/movie/MovieHome;->initControl()V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 476
    invoke-static {p0}, Lcom/ub/main/net/ImageLoadingTask2;->clearCacheImage(Landroid/content/Context;)V

    .line 477
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 478
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 257
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v1}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v1

    if-ne p3, v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 271
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 272
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "filmId"

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v3}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 273
    const-string v2, "date"

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v3}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    const-string v1, "city"

    iget-object v2, p0, Lcom/ub/main/movie/MovieHome;->city:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-string v2, "name"

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v3}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getFilmName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 276
    const-string v2, "noplan"

    iget-object v1, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/ub/main/movie/MovieHome;->galleryFlow:Lcom/ub/main/movie/GalleryFlow;

    invoke-virtual {v3}, Lcom/ub/main/movie/GalleryFlow;->getSelectedItemPosition()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v1}, Lcom/ub/main/data/movie/CityFilmData;->getNoPlanDate()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    const-class v1, Lcom/ub/main/movie/MovieCinema;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 280
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 310
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v0}, Lcom/ub/main/data/movie/CityFilmData;->getFilmName()Ljava/lang/String;

    move-result-object v1

    .line 312
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v0}, Lcom/ub/main/data/movie/CityFilmData;->getFilmDoctor()Ljava/lang/String;

    move-result-object v2

    .line 313
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v0}, Lcom/ub/main/data/movie/CityFilmData;->getFilmType()Ljava/lang/String;

    move-result-object v3

    .line 314
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v0}, Lcom/ub/main/data/movie/CityFilmData;->getFilmTime()Ljava/lang/String;

    move-result-object v4

    .line 315
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->filmData:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/data/movie/CityFilmData;

    invoke-virtual {v0}, Lcom/ub/main/data/movie/CityFilmData;->getFilmActor()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    .line 311
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieHome;->updateMovieInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 285
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieHome;->finish()V

    .line 287
    const/4 v0, 0x1

    .line 289
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public updateMovieInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "title"
    .parameter "state"
    .parameter "type"
    .parameter "time"
    .parameter "actor"

    .prologue
    .line 181
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->mvTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->state:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->type:Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->time:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\u5206\u949f"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v0, p0, Lcom/ub/main/movie/MovieHome;->actor:Landroid/widget/TextView;

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method
