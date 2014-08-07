.class public Lcom/ub/main/movie/CinemaSchedule;
.super Lcom/ub/main/BaseActivity;
.source "CinemaSchedule.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ub/main/BaseActivity;",
        "Landroid/view/View$OnClickListener;",
        "Landroid/widget/AdapterView$OnItemClickListener;"
    }
.end annotation


# static fields
.field private static final REQUEST_CINEMA_SEATS:I


# instance fields
.field private adapter:Landroid/widget/SimpleAdapter;

.field private back:Landroid/widget/Button;

.field private buttons:[Landroid/widget/Button;

.field private cinemaAdd:Landroid/widget/TextView;

.field private cinemaName:Landroid/widget/TextView;

.field private cinema_District:Ljava/lang/String;

.field private cinema_Name:Ljava/lang/String;

.field private cinema_code:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private dateIndex:I

.field private dates:[Ljava/lang/String;

.field private film_id:Ljava/lang/String;

.field private film_name:Ljava/lang/String;

.field private gpsX:Ljava/lang/String;

.field private gpsY:Ljava/lang/String;

.field private head:Landroid/view/ViewGroup;

.field private isClick:[I

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private listView:Landroid/widget/ListView;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mapButton:Landroid/widget/Button;

.field private plan_date:Ljava/lang/String;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 49
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->list:Ljava/util/List;

    .line 79
    const-string v0, "\u5317\u4eac\u5e02"

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->city:Ljava/lang/String;

    .line 80
    const-string v0, "002370"

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_code:Ljava/lang/String;

    .line 81
    const-string v0, "0011756601"

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->film_id:Ljava/lang/String;

    .line 82
    const-string v0, "2011-07-05"

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->plan_date:Ljava/lang/String;

    .line 85
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->film_name:Ljava/lang/String;

    .line 86
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_Name:Ljava/lang/String;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_District:Ljava/lang/String;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/movie/CinemaSchedule;)[Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/movie/CinemaSchedule;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 84
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/movie/CinemaSchedule;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 337
    invoke-direct {p0, p1}, Lcom/ub/main/movie/CinemaSchedule;->getFilmPlan(Ljava/lang/String;)V

    return-void
.end method

.method private clearData()V
    .locals 1

    .prologue
    .line 350
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->list:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 353
    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->adapter:Landroid/widget/SimpleAdapter;

    if-eqz v0, :cond_1

    .line 354
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 355
    :cond_1
    return-void
.end method

.method private getFilmPlan(Ljava/lang/String;)V
    .locals 6
    .parameter "planDate"

    .prologue
    .line 340
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_FILM_PLAN:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 341
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->city:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_code:Ljava/lang/String;

    iget-object v3, p0, Lcom/ub/main/movie/CinemaSchedule;->film_id:Ljava/lang/String;

    invoke-static {v0, v2, v3, p1}, Lcom/ub/main/util/NetConfig;->createFilmPlanPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 342
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u7535\u5f71\u6392\u671f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 340
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/CinemaSchedule;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 343
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 267
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 268
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->mapButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    return-void
.end method

.method private initModel()V
    .locals 3

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaSchedule;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 238
    .local v0, intent:Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 239
    const-string v1, "city"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->city:Ljava/lang/String;

    .line 240
    const-string v1, "filmId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->film_id:Ljava/lang/String;

    .line 241
    const-string v1, "date"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->plan_date:Ljava/lang/String;

    .line 242
    const/4 v1, 0x3

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->isClick:[I

    .line 243
    const-string v1, "noplan"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->isClick:[I

    .line 244
    const-string v1, "cinemaCode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_code:Ljava/lang/String;

    .line 245
    const-string v1, "cinemaName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_Name:Ljava/lang/String;

    .line 246
    const-string v1, "cinemaDistrict"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_District:Ljava/lang/String;

    .line 247
    const-string v1, "gis_x"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->gpsX:Ljava/lang/String;

    .line 248
    const-string v1, "gis_y"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->gpsY:Ljava/lang/String;

    .line 249
    const-string v1, "filmName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->film_name:Ljava/lang/String;

    .line 250
    const-string v1, "dateIndex"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/ub/main/movie/CinemaSchedule;->dateIndex:I

    .line 251
    const-string v1, "cinema_code"

    iget-object v2, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_code:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->plan_date:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->plan_date:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    .line 256
    :cond_0
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 257
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    iget v2, p0, Lcom/ub/main/movie/CinemaSchedule;->dateIndex:I

    aget-object v1, v1, v2

    invoke-direct {p0, v1}, Lcom/ub/main/movie/CinemaSchedule;->getFilmPlan(Ljava/lang/String;)V

    .line 259
    :cond_1
    return-void
.end method

.method private initView()V
    .locals 12

    .prologue
    const/4 v3, -0x1

    const v2, -0x777778

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 111
    const/high16 v0, 0x7f08

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->head:Landroid/view/ViewGroup;

    .line 112
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->head:Landroid/view/ViewGroup;

    const v1, 0x7f080142

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->back:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->back:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 114
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->head:Landroid/view/ViewGroup;

    const v1, 0x7f080143

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->mapButton:Landroid/widget/Button;

    .line 117
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->mapButton:Landroid/widget/Button;

    const-string v1, "\u5730\u56fe"

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->mapButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->head:Landroid/view/ViewGroup;

    const v1, 0x7f080141

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->title:Landroid/widget/TextView;

    .line 122
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 123
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->title:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->film_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->cinemaName:Landroid/widget/TextView;

    .line 125
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->cinemaName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_Name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->cinemaAdd:Landroid/widget/TextView;

    .line 127
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->cinemaAdd:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_District:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    const v0, 0x7f08006f

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v9

    .line 130
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    const v0, 0x7f080071

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v10

    .line 131
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    const v0, 0x7f080070

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    aput-object v0, v1, v11

    .line 133
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v9

    const v1, 0x7f0200b7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 134
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v10

    const v1, 0x7f0200b8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 135
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v11

    const v1, 0x7f0200b9

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 136
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->isClick:[I

    if-eqz v0, :cond_2

    .line 138
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->isClick:[I

    aget v0, v0, v9

    if-ne v0, v10, :cond_0

    .line 140
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v9

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 141
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v9

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->isClick:[I

    aget v0, v0, v10

    if-ne v0, v10, :cond_1

    .line 145
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v10

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 146
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v10

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 148
    :cond_1
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->isClick:[I

    aget v0, v0, v11

    if-ne v0, v10, :cond_2

    .line 150
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v11

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 151
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v11

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    .line 154
    :cond_2
    iget v0, p0, Lcom/ub/main/movie/CinemaSchedule;->dateIndex:I

    if-nez v0, :cond_5

    .line 156
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v9

    const v1, 0x7f0200b4

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 157
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v9

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    .line 170
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 171
    const/4 v6, 0x0

    .line 172
    .local v6, date:Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_1
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    array-length v0, v0

    if-lt v7, v0, :cond_7

    .line 224
    .end local v6           #date:Ljava/lang/String;
    .end local v7           #i:I
    :cond_4
    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->listView:Landroid/widget/ListView;

    .line 226
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/ub/main/movie/CinemaSchedule;->list:Ljava/util/List;

    const v3, 0x7f030035

    .line 227
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/String;

    const-string v5, "time"

    aput-object v5, v4, v9

    const-string v5, "money"

    aput-object v5, v4, v10

    const-string v5, "ticket"

    aput-object v5, v4, v11

    .line 228
    const/4 v5, 0x3

    new-array v5, v5, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 226
    iput-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->adapter:Landroid/widget/SimpleAdapter;

    .line 229
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 230
    return-void

    .line 159
    :cond_5
    iget v0, p0, Lcom/ub/main/movie/CinemaSchedule;->dateIndex:I

    if-ne v0, v10, :cond_6

    .line 161
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v10

    const v1, 0x7f0200b5

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 162
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v10

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 164
    :cond_6
    iget v0, p0, Lcom/ub/main/movie/CinemaSchedule;->dateIndex:I

    if-ne v0, v11, :cond_3

    .line 166
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v11

    const v1, 0x7f0200b6

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 167
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v11

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_0

    .line 173
    .restart local v6       #date:Ljava/lang/String;
    .restart local v7       #i:I
    :cond_7
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->dates:[Ljava/lang/String;

    aget-object v6, v0, v7

    .line 174
    if-eqz v6, :cond_8

    .line 178
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v7

    new-instance v1, Lcom/ub/main/movie/CinemaSchedule$1;

    invoke-direct {v1, p0}, Lcom/ub/main/movie/CinemaSchedule$1;-><init>(Lcom/ub/main/movie/CinemaSchedule;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 216
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v7

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 217
    new-instance v8, Ljava/lang/StringBuffer;

    const/4 v0, 0x5

    invoke-virtual {v6, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, "\u6708"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v8, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 218
    .local v8, temp:Ljava/lang/StringBuffer;
    const-string v0, "\u65e5"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    iget-object v0, p0, Lcom/ub/main/movie/CinemaSchedule;->buttons:[Landroid/widget/Button;

    aget-object v0, v0, v7

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 172
    .end local v8           #temp:Ljava/lang/StringBuffer;
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1

    .line 228
    :array_0
    .array-data 0x4
        0x19t 0x1t 0x8t 0x7ft
        0x1at 0x1t 0x8t 0x7ft
        0x1bt 0x1t 0x8t 0x7ft
    .end array-data
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 369
    const-string v6, "200"

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 371
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, p3}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 372
    invoke-direct {p0}, Lcom/ub/main/movie/CinemaSchedule;->clearData()V

    .line 413
    :goto_0
    return-void

    .line 375
    :cond_0
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonObject:Lorg/json/JSONObject;

    const-string v7, "planList"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    iput-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    .line 376
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 377
    .local v2, len:I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 378
    .local v4, planList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/FilmPlan;>;"
    const/4 v0, 0x0

    .line 379
    .local v0, filmPlan:Lcom/ub/main/data/movie/FilmPlan;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-lt v1, v2, :cond_2

    .line 393
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3

    .line 394
    :cond_1
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaSchedule;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "\u6ca1\u6709\u6392\u671f\u4fe1\u606f\uff01"

    invoke-static {v6, v7}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 380
    :cond_2
    new-instance v0, Lcom/ub/main/data/movie/FilmPlan;

    .end local v0           #filmPlan:Lcom/ub/main/data/movie/FilmPlan;
    invoke-direct {v0}, Lcom/ub/main/data/movie/FilmPlan;-><init>()V

    .line 381
    .restart local v0       #filmPlan:Lcom/ub/main/data/movie/FilmPlan;
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "plan_time"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setTime(Ljava/lang/String;)V

    .line 382
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "film_fee"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setPrice(Ljava/lang/String;)V

    .line 383
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "seat_left"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setBalanceSeats(Ljava/lang/String;)V

    .line 384
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "film_name"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setFilmName(Ljava/lang/String;)V

    .line 385
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "plan_code"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setPlanCode(Ljava/lang/String;)V

    .line 386
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "plan_date"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setPlanDate(Ljava/lang/String;)V

    .line 387
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "film_type"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setFilmType(Ljava/lang/String;)V

    .line 388
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "film_pic"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setFilmPic(Ljava/lang/String;)V

    .line 389
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->jsonArray:Lorg/json/JSONArray;

    invoke-virtual {v6, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "seller_id"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/ub/main/data/movie/FilmPlan;->setSellerID(Ljava/lang/String;)V

    .line 390
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 398
    :cond_3
    const/4 v5, 0x0

    .line 399
    .local v5, tempBuffer:Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .line 400
    .local v3, plan:Lcom/ub/main/data/movie/FilmPlan;
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 401
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lt v1, v6, :cond_4

    .line 411
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->adapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v6}, Landroid/widget/SimpleAdapter;->notifyDataSetChanged()V

    .line 412
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->listView:Landroid/widget/ListView;

    invoke-virtual {v6, v4}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 402
    :cond_4
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #plan:Lcom/ub/main/data/movie/FilmPlan;
    check-cast v3, Lcom/ub/main/data/movie/FilmPlan;

    .line 403
    .restart local v3       #plan:Lcom/ub/main/data/movie/FilmPlan;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    .line 404
    new-instance v5, Ljava/lang/StringBuffer;

    .end local v5           #tempBuffer:Ljava/lang/StringBuffer;
    invoke-virtual {v3}, Lcom/ub/main/data/movie/FilmPlan;->getTime()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 405
    .restart local v5       #tempBuffer:Ljava/lang/StringBuffer;
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    const-string v7, "time"

    const/4 v8, 0x2

    const-string v9, ":"

    invoke-virtual {v5, v8, v9}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    const-string v7, "money"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/ub/main/data/movie/FilmPlan;->getPrice()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v9, "\u5143"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    const-string v7, "ticket"

    invoke-virtual {v3}, Lcom/ub/main/data/movie/FilmPlan;->getFilmType()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->list:Ljava/util/List;

    iget-object v7, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 409
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    .line 401
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v0, -0x1

    .line 360
    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    .line 361
    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->setResult(I)V

    .line 362
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaSchedule;->finish()V

    .line 364
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "arg0"

    .prologue
    .line 272
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 284
    :goto_0
    return-void

    .line 275
    :pswitch_0
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaSchedule;->finish()V

    goto :goto_0

    .line 278
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .line 279
    const-string v1, "android.intent.action.VIEW"

    .line 280
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "http://ditu.google.cn/maps?hl=zh&mrt=loc&q="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/ub/main/movie/CinemaSchedule;->gpsY:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/ub/main/movie/CinemaSchedule;->gpsX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 278
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 281
    .local v0, i:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 272
    :pswitch_data_0
    .packed-switch 0x7f080142
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 97
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 98
    const v0, 0x7f030034

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/CinemaSchedule;->setContentView(I)V

    .line 100
    invoke-direct {p0}, Lcom/ub/main/movie/CinemaSchedule;->initModel()V

    .line 101
    invoke-direct {p0}, Lcom/ub/main/movie/CinemaSchedule;->initView()V

    .line 102
    invoke-direct {p0}, Lcom/ub/main/movie/CinemaSchedule;->initControl()V

    .line 103
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
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
    .line 319
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 320
    .local v2, planList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/FilmPlan;>;"
    invoke-virtual {v2, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/data/movie/FilmPlan;

    .line 322
    .local v1, plan:Lcom/ub/main/data/movie/FilmPlan;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 323
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "cinema_code"

    iget-object v4, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_code:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    const-string v3, "plan_code"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getPlanCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const-string v3, "time"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getTime()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    const-string v3, "film_name"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getFilmName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 327
    const-string v3, "cinema_name"

    iget-object v4, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_Name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v3, "cinema_District"

    iget-object v4, p0, Lcom/ub/main/movie/CinemaSchedule;->cinema_District:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    const-string v3, "price"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getPrice()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    const-string v3, "date"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getPlanDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const-string v3, "type"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getFilmType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    const-string v3, "url"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getFilmPic()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    const-string v3, "sid"

    invoke-virtual {v1}, Lcom/ub/main/data/movie/FilmPlan;->getSellerID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    const-class v3, Lcom/ub/main/movie/MovieSeats;

    invoke-static {p0, v3, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 335
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 310
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/ub/main/movie/CinemaSchedule;->finish()V

    .line 312
    const/4 v0, 0x1

    .line 314
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setData([[Ljava/lang/String;)V
    .locals 5
    .parameter "data"

    .prologue
    .line 292
    if-eqz p1, :cond_0

    .line 294
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_1

    .line 304
    .end local v0           #i:I
    :cond_0
    return-void

    .line 296
    .restart local v0       #i:I
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    .line 297
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    const-string v2, "time"

    aget-object v3, p1, v0

    const/4 v4, 0x0

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    const-string v2, "money"

    aget-object v3, p1, v0

    const/4 v4, 0x1

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    const-string v2, "ticket"

    aget-object v3, p1, v0

    const/4 v4, 0x2

    aget-object v3, v3, v4

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->list:Ljava/util/List;

    iget-object v2, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 301
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/ub/main/movie/CinemaSchedule;->map:Ljava/util/Map;

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
