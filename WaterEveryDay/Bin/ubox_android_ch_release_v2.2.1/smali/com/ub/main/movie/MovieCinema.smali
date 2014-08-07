.class public Lcom/ub/main/movie/MovieCinema;
.super Lcom/ub/main/BaseActivity;
.source "MovieCinema.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;
.implements Landroid/widget/ExpandableListView$OnChildClickListener;


# static fields
.field private static final REQUEST_CINEMA_DETAIL:I


# instance fields
.field private back:Landroid/widget/Button;

.field private buttons:[Landroid/widget/Button;

.field private child:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

.field private city:Ljava/lang/String;

.field private dateIndex:I

.field private dates:[Ljava/lang/String;

.field private film_id:Ljava/lang/String;

.field private film_name:Ljava/lang/String;

.field private group:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private head:Landroid/view/ViewGroup;

.field private iSelectIndex:I

.field private isClick:[I

.field private list1:Ljava/util/List;
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

.field private mExpandableListView:Landroid/widget/ExpandableListView;

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

.field private noPlan_date:Ljava/lang/String;

.field private planDate:Ljava/lang/String;

.field private plan_date:Ljava/lang/String;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Lcom/ub/main/BaseActivity;-><init>()V

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/widget/Button;

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    .line 57
    const-string v0, "\u5317\u4eac\u5e02"

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    .line 58
    const-string v0, "0011756601"

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    .line 59
    const-string v0, "2011-07-05"

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->noPlan_date:Ljava/lang/String;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->list1:Ljava/util/List;

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    .line 81
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    .line 30
    return-void
.end method

.method static synthetic access$0(Lcom/ub/main/movie/MovieCinema;)[Landroid/widget/Button;
    .locals 1
    .parameter

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$1(Lcom/ub/main/movie/MovieCinema;)[Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 53
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/ub/main/movie/MovieCinema;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 274
    invoke-direct {p0, p1}, Lcom/ub/main/movie/MovieCinema;->getFilmPlan(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3(Lcom/ub/main/movie/MovieCinema;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    iput p1, p0, Lcom/ub/main/movie/MovieCinema;->dateIndex:I

    return-void
.end method

.method private clearData()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->list1:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 290
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->list1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    if-eqz v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    invoke-virtual {v0}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->notifyDataSetChanged()V

    .line 293
    :cond_1
    return-void
.end method

.method private getCinemaList(Lorg/json/JSONArray;)Ljava/util/ArrayList;
    .locals 5
    .parameter "cinemaList"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/data/movie/Cinema;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 305
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 307
    .local v2, recentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/Cinema;>;"
    const/4 v0, 0x0

    .line 308
    .local v0, cinema:Lcom/ub/main/data/movie/Cinema;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 322
    return-object v2

    .line 309
    :cond_0
    new-instance v0, Lcom/ub/main/data/movie/Cinema;

    .end local v0           #cinema:Lcom/ub/main/data/movie/Cinema;
    invoke-direct {v0}, Lcom/ub/main/data/movie/Cinema;-><init>()V

    .line 310
    .restart local v0       #cinema:Lcom/ub/main/data/movie/Cinema;
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cinema_address"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setAddress(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cinema_city"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setCity(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cinema_code"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setCode(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cinema_district"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setDistrict(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cinema_name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setName(Ljava/lang/String;)V

    .line 315
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "cinema_province"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setProvince(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "film_fee"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setPrice(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "gis_x"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setGis_x(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "gis_y"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setGis_y(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "distance"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/ub/main/data/movie/Cinema;->setDistance(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private getFilmPlan(Ljava/lang/String;)V
    .locals 6
    .parameter "planDate"

    .prologue
    .line 275
    iput-object p1, p0, Lcom/ub/main/movie/MovieCinema;->planDate:Ljava/lang/String;

    .line 277
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->mExpandableListView:Landroid/widget/ExpandableListView;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/ub/main/movie/MovieCinema;->iSelectIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 280
    :cond_0
    sget-object v1, Lcom/ub/main/util/NetConfig$HttpRequestId;->MOVIE_CINEMA:Lcom/ub/main/util/NetConfig$HttpRequestId;

    .line 281
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    iget-object v2, p0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    sget-object v3, Lcom/ub/main/util/NetConfig;->LONGITUDE:Ljava/lang/String;

    sget-object v4, Lcom/ub/main/util/NetConfig;->LATITUDE:Ljava/lang/String;

    invoke-static {v0, v2, p1, v3, v4}, Lcom/ub/main/util/NetConfig;->createGetCinemaPostString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 282
    const-string v5, "\u6b63\u5728\u83b7\u53d6\u5f71\u9662\u4fe1\u606f..."

    move-object v0, p0

    move-object v3, p0

    move-object v4, p0

    .line 280
    invoke-virtual/range {v0 .. v5}, Lcom/ub/main/movie/MovieCinema;->httpRequest(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Landroid/content/Context;Lcom/ub/main/net/IHttpObserver;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method private initControl()V
    .locals 1

    .prologue
    .line 269
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->back:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    .line 271
    iget-object v0, p0, Lcom/ub/main/movie/MovieCinema;->mExpandableListView:Landroid/widget/ExpandableListView;

    invoke-virtual {v0, p0}, Landroid/widget/ExpandableListView;->setOnGroupClickListener(Landroid/widget/ExpandableListView$OnGroupClickListener;)V

    .line 272
    return-void
.end method

.method private initModel()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 100
    iput v6, p0, Lcom/ub/main/movie/MovieCinema;->iSelectIndex:I

    .line 101
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieCinema;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 102
    .local v2, intent:Landroid/content/Intent;
    if-eqz v2, :cond_0

    .line 103
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "city"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    .line 104
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "filmId"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    .line 105
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    .line 106
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "date"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    .line 107
    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "noplan"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/movie/MovieCinema;->noPlan_date:Ljava/lang/String;

    .line 108
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    .line 110
    const/4 v4, 0x3

    new-array v4, v4, [I

    iput-object v4, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    .line 111
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->noPlan_date:Ljava/lang/String;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 112
    .local v3, noplan:[Ljava/lang/String;
    const/4 v1, 0x0

    .line 113
    .local v1, index:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    array-length v4, v4

    if-lt v0, v4, :cond_2

    .line 127
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v3           #noplan:[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    array-length v4, v4

    if-lez v4, :cond_1

    .line 128
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_1
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    array-length v4, v4

    if-lt v0, v4, :cond_5

    .line 137
    .end local v0           #i:I
    :cond_1
    :goto_2
    return-void

    .line 115
    .restart local v0       #i:I
    .restart local v1       #index:I
    .restart local v3       #noplan:[Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    aget-object v4, v4, v0

    aget-object v5, v3, v1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 117
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    const/4 v5, 0x1

    aput v5, v4, v0

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    if-lt v1, v4, :cond_3

    .line 120
    array-length v4, v3

    add-int/lit8 v1, v4, -0x1

    .line 113
    :cond_3
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    :cond_4
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    aput v6, v4, v0

    goto :goto_3

    .line 130
    .end local v1           #index:I
    .end local v3           #noplan:[Ljava/lang/String;
    :cond_5
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    aget v4, v4, v0

    if-nez v4, :cond_6

    .line 132
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-direct {p0, v4}, Lcom/ub/main/movie/MovieCinema;->getFilmPlan(Ljava/lang/String;)V

    goto :goto_2

    .line 128
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private initView()V
    .locals 10

    .prologue
    const v9, -0x777778

    const/high16 v8, -0x100

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 143
    const/high16 v3, 0x7f08

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieCinema;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/ub/main/movie/MovieCinema;->head:Landroid/view/ViewGroup;

    .line 144
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->head:Landroid/view/ViewGroup;

    const v4, 0x7f080142

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/ub/main/movie/MovieCinema;->back:Landroid/widget/Button;

    .line 145
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->back:Landroid/widget/Button;

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->head:Landroid/view/ViewGroup;

    const v4, 0x7f080141

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/ub/main/movie/MovieCinema;->title:Landroid/widget/TextView;

    .line 149
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->title:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 150
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->title:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    const v3, 0x7f080112

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieCinema;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v6

    .line 153
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    const v3, 0x7f080113

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieCinema;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v5

    .line 154
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    const v3, 0x7f080114

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieCinema;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    aput-object v3, v4, v7

    .line 156
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v6

    const v4, 0x7f0200b7

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 157
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v5

    const v4, 0x7f0200b8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 158
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v7

    const v4, 0x7f0200b9

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 159
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v6

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 160
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v5

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 161
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v7

    invoke-virtual {v3, v8}, Landroid/widget/Button;->setTextColor(I)V

    .line 162
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    if-eqz v3, :cond_2

    .line 164
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    aget v3, v3, v6

    if-ne v3, v5, :cond_0

    .line 166
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 167
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v6

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 169
    :cond_0
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    aget v3, v3, v5

    if-ne v3, v5, :cond_1

    .line 171
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v5

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 172
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v5

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 174
    :cond_1
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    aget v3, v3, v7

    if-ne v3, v5, :cond_2

    .line 176
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v7

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v7

    invoke-virtual {v3, v9}, Landroid/widget/Button;->setTextColor(I)V

    .line 180
    :cond_2
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    array-length v3, v3

    if-lt v1, v3, :cond_4

    .line 204
    :goto_1
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, date:Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    array-length v3, v3

    if-lt v1, v3, :cond_9

    .line 261
    .end local v0           #date:Ljava/lang/String;
    :cond_3
    const v3, 0x7f080115

    invoke-virtual {p0, v3}, Lcom/ub/main/movie/MovieCinema;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ExpandableListView;

    iput-object v3, p0, Lcom/ub/main/movie/MovieCinema;->mExpandableListView:Landroid/widget/ExpandableListView;

    .line 262
    new-instance v3, Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    invoke-virtual {p0}, Lcom/ub/main/movie/MovieCinema;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    invoke-direct {v3, v4, v5, v6}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/HashMap;)V

    iput-object v3, p0, Lcom/ub/main/movie/MovieCinema;->cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    .line 263
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->mExpandableListView:Landroid/widget/ExpandableListView;

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    invoke-virtual {v3, v4}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 265
    return-void

    .line 182
    :cond_4
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    aget v3, v3, v1

    if-nez v3, :cond_8

    .line 184
    if-nez v1, :cond_6

    .line 186
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v6

    const v4, 0x7f0200b4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 187
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v6

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 199
    :cond_5
    :goto_3
    iput v1, p0, Lcom/ub/main/movie/MovieCinema;->dateIndex:I

    goto :goto_1

    .line 189
    :cond_6
    if-ne v1, v5, :cond_7

    .line 191
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v5

    const v4, 0x7f0200b5

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 192
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v5

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 194
    :cond_7
    if-ne v1, v7, :cond_5

    .line 196
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v7

    const v4, 0x7f0200b6

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 197
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v7

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTextColor(I)V

    goto :goto_3

    .line 180
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .restart local v0       #date:Ljava/lang/String;
    :cond_9
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->dates:[Ljava/lang/String;

    aget-object v0, v3, v1

    .line 208
    if-eqz v0, :cond_a

    .line 213
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    new-instance v4, Lcom/ub/main/movie/MovieCinema$1;

    invoke-direct {v4, p0}, Lcom/ub/main/movie/MovieCinema$1;-><init>(Lcom/ub/main/movie/MovieCinema;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 255
    new-instance v2, Ljava/lang/StringBuffer;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "-"

    const-string v5, "\u6708"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 256
    .local v2, temp:Ljava/lang/StringBuffer;
    const-string v3, "\u65e5"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->buttons:[Landroid/widget/Button;

    aget-object v3, v3, v1

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 206
    .end local v2           #temp:Ljava/lang/StringBuffer;
    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method


# virtual methods
.method public HttpResponse(Lcom/ub/main/util/NetConfig$HttpRequestId;Ljava/lang/String;Ljava/lang/String;)V
    .locals 25
    .parameter "requestId"
    .parameter "stateCode"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 330
    const-string v21, "200"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-nez v21, :cond_0

    .line 332
    invoke-direct/range {p0 .. p0}, Lcom/ub/main/movie/MovieCinema;->clearData()V

    .line 333
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/movie/MovieCinema;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/ub/main/util/Tool;->DisplayToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 498
    :goto_0
    return-void

    .line 337
    :cond_0
    const/4 v7, 0x0

    .line 338
    .local v7, cinema:Lcom/ub/main/data/movie/Cinema;
    const/4 v9, 0x0

    .line 339
    .local v9, dis:Ljava/lang/String;
    const/16 v20, 0x0

    .line 340
    .local v20, result:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->clear()V

    .line 341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Ljava/util/HashMap;->clear()V

    .line 343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    const-string v22, "districtList"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 344
    .local v11, districtList:Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->jsonObject:Lorg/json/JSONObject;

    move-object/from16 v21, v0

    const-string v22, "cinemaList"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 345
    .local v18, recentCinema:Lorg/json/JSONArray;
    new-instance v12, Ljava/util/Hashtable;

    invoke-direct {v12}, Ljava/util/Hashtable;-><init>()V

    .line 346
    .local v12, districtMap:Ljava/util/Hashtable;,"Ljava/util/Hashtable<Ljava/lang/String;Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/ub/main/movie/MovieCinema;->getCinemaList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v19

    .line 348
    .local v19, recentList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/Cinema;>;"
    const-string v10, ""

    .line 349
    .local v10, disName:Ljava/lang/String;
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    new-array v3, v0, [Ljava/lang/String;

    .line 352
    .local v3, all_name:[Ljava/lang/String;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_1

    .line 353
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    .line 354
    .local v16, obj:[Ljava/lang/Object;
    const/16 v21, 0x0

    const-string v22, "0"

    aput-object v22, v16, v21

    .line 355
    const/16 v21, 0x1

    const-string v22, "\u9644\u8fd1\u5f71\u9662"

    aput-object v22, v16, v21

    .line 356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v22, v16, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v16           #obj:[Ljava/lang/Object;
    :cond_1
    const/4 v8, 0x0

    .line 388
    .local v8, cinemaList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/data/movie/Cinema;>;"
    const/4 v13, 0x0

    .local v13, i:I
    :goto_1
    invoke-virtual {v11}, Lorg/json/JSONArray;->length()I

    move-result v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_3

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->list1:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->clear()V

    .line 423
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_c

    .line 424
    const/4 v13, 0x0

    :goto_2
    const/16 v21, 0x3

    move/from16 v0, v21

    if-lt v13, v0, :cond_8

    .line 480
    :cond_2
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v4, v0, [Ljava/lang/Object;

    .line 481
    .local v4, all_obj:[Ljava/lang/Object;
    const/16 v21, 0x0

    const-string v22, "0"

    aput-object v22, v4, v21

    .line 482
    const/16 v21, 0x1

    const-string v22, "\u6240\u6709\u5f71\u9662"

    aput-object v22, v4, v21

    .line 483
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 484
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    aget-object v22, v4, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    const/16 v23, 0x0

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    const/4 v13, 0x0

    :goto_3
    invoke-virtual {v12}, Ljava/util/Hashtable;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v13, v0, :cond_10

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->setGroups(Ljava/util/ArrayList;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->setChildren(Ljava/util/HashMap;)V

    .line 497
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->cinemaAdapter:Lcom/ub/main/movie/CinemaExpandListViewAdapter;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/ub/main/movie/CinemaExpandListViewAdapter;->notifyDataSetChanged()V

    goto/16 :goto_0

    .line 389
    .end local v4           #all_obj:[Ljava/lang/Object;
    :cond_3
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "name"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 390
    aput-object v10, v3, v13

    .line 391
    invoke-virtual {v11, v13}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v21

    const-string v22, "cinemaList"

    invoke-virtual/range {v21 .. v22}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/ub/main/movie/MovieCinema;->getCinemaList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v8

    .line 392
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v6, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v14, 0x0

    .local v14, j:I
    :goto_4
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-lt v14, v0, :cond_4

    .line 416
    invoke-virtual {v12, v10, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_1

    .line 394
    :cond_4
    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cinema:Lcom/ub/main/data/movie/Cinema;
    check-cast v7, Lcom/ub/main/data/movie/Cinema;

    .line 395
    .restart local v7       #cinema:Lcom/ub/main/data/movie/Cinema;
    new-instance v15, Ljava/util/HashMap;

    invoke-direct {v15}, Ljava/util/HashMap;-><init>()V

    .line 396
    .local v15, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v21, "cinema_name"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    const-string v21, "cinema_price"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getPrice()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v23, "\u5143"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getDistance()Ljava/lang/String;

    move-result-object v9

    .line 399
    const/16 v22, 0x0

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_5

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    :goto_5
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 400
    const-string v21, "cinema_distance"

    new-instance v22, Ljava/lang/StringBuilder;

    const-string v23, "\u8ddd\u79bb\u76ee\u7684\u5730\u9644\u8fd1"

    invoke-direct/range {v22 .. v23}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "\u516c\u91cc"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 402
    const-string v21, "filmName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    const-string v21, "filmId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    const-string v21, "date"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    const-string v21, "noplan"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string v21, "city"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    const-string v21, "cinemaCode"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getCode()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    const-string v21, "cinemaName"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getName()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    const-string v21, "cinemaDistrict"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getAddress()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    const-string v21, "gis_x"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getGis_x()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 411
    const-string v21, "gis_y"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getGis_y()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    const-string v21, "dateIndex"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ub/main/movie/MovieCinema;->dateIndex:I

    move/from16 v22, v0

    invoke-static/range {v22 .. v22}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_4

    .line 399
    :cond_5
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_7

    const/16 v21, 0x4

    goto/16 :goto_5

    :cond_7
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    goto/16 :goto_5

    .line 425
    .end local v6           #childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v14           #j:I
    .end local v15           #map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_8
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cinema:Lcom/ub/main/data/movie/Cinema;
    check-cast v7, Lcom/ub/main/data/movie/Cinema;

    .line 426
    .restart local v7       #cinema:Lcom/ub/main/data/movie/Cinema;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    .line 427
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "name"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "value"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getPrice()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "\u5143"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getDistance()Ljava/lang/String;

    move-result-object v9

    .line 430
    const/16 v22, 0x0

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_a

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_9

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    :goto_6
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "distance"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u8ddd\u79bb\u76ee\u7684\u5730\u9644\u8fd1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u516c\u91cc"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "filmName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "filmId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 434
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "date"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "noplan"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "city"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "cinemaCode"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getCode()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "cinemaName"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "cinemaDistrict"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "gis_x"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getGis_x()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "gis_y"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getGis_y()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "dateIndex"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ub/main/movie/MovieCinema;->dateIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 445
    .local v17, obj_1:[Ljava/lang/Object;
    const/16 v21, 0x0

    const-string v22, "1"

    aput-object v22, v17, v21

    .line 446
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v22, v0

    aput-object v22, v17, v21

    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v21, 0x1

    aget-object v21, v17, v21

    check-cast v21, Ljava/util/HashMap;

    const-string v23, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .line 430
    .end local v17           #obj_1:[Ljava/lang/Object;
    :cond_9
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    goto/16 :goto_6

    :cond_a
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_b

    const/16 v21, 0x4

    goto/16 :goto_6

    :cond_b
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    goto/16 :goto_6

    .line 451
    :cond_c
    const/4 v13, 0x0

    :goto_7
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v13, v0, :cond_2

    .line 452
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #cinema:Lcom/ub/main/data/movie/Cinema;
    check-cast v7, Lcom/ub/main/data/movie/Cinema;

    .line 453
    .restart local v7       #cinema:Lcom/ub/main/data/movie/Cinema;
    new-instance v21, Ljava/util/HashMap;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "name"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "value"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getPrice()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v24, "\u5143"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getDistance()Ljava/lang/String;

    move-result-object v9

    .line 457
    const/16 v22, 0x0

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    const/16 v23, -0x1

    move/from16 v0, v21

    move/from16 v1, v23

    if-eq v0, v1, :cond_e

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v23

    move/from16 v0, v21

    move/from16 v1, v23

    if-ge v0, v1, :cond_d

    const-string v21, "."

    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v21

    add-int/lit8 v21, v21, 0x2

    :goto_8
    move/from16 v0, v22

    move/from16 v1, v21

    invoke-virtual {v9, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v20

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "distance"

    new-instance v23, Ljava/lang/StringBuilder;

    const-string v24, "\u8ddd\u79bb\u76ee\u7684\u5730\u9644\u8fd1"

    invoke-direct/range {v23 .. v24}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u516c\u91cc"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "filmName"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "filmId"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "date"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "noplan"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "city"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "cinemaCode"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getCode()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "cinemaName"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getName()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "cinemaDistrict"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getAddress()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "gis_x"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getGis_x()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "gis_y"

    invoke-virtual {v7}, Lcom/ub/main/data/movie/Cinema;->getGis_y()Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v21, v0

    const-string v22, "dateIndex"

    move-object/from16 v0, p0

    iget v0, v0, Lcom/ub/main/movie/MovieCinema;->dateIndex:I

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v23

    invoke-interface/range {v21 .. v23}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 471
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    .line 472
    .restart local v17       #obj_1:[Ljava/lang/Object;
    const/16 v21, 0x0

    const-string v22, "1"

    aput-object v22, v17, v21

    .line 473
    const/16 v21, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->map:Ljava/util/Map;

    move-object/from16 v22, v0

    aput-object v22, v17, v21

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 475
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    move-object/from16 v22, v0

    const/16 v21, 0x1

    aget-object v21, v17, v21

    check-cast v21, Ljava/util/HashMap;

    const-string v23, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_7

    .line 457
    .end local v17           #obj_1:[Ljava/lang/Object;
    :cond_d
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    goto/16 :goto_8

    :cond_e
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    const/16 v23, 0x4

    move/from16 v0, v21

    move/from16 v1, v23

    if-lt v0, v1, :cond_f

    const/16 v21, 0x4

    goto/16 :goto_8

    :cond_f
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v21

    goto/16 :goto_8

    .line 489
    .restart local v4       #all_obj:[Ljava/lang/Object;
    :cond_10
    const/16 v21, 0x2

    move/from16 v0, v21

    new-array v5, v0, [Ljava/lang/Object;

    .line 490
    .local v5, all_obj_1:[Ljava/lang/Object;
    const/16 v21, 0x0

    const-string v22, "2"

    aput-object v22, v5, v21

    .line 491
    const/16 v21, 0x1

    aget-object v22, v3, v13

    aput-object v22, v5, v21

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    move-object/from16 v21, v0

    aget-object v22, v3, v13

    aget-object v23, v3, v13

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 299
    if-nez p1, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 300
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieCinema;->finish()V

    .line 302
    :cond_0
    return-void
.end method

.method public onChildClick(Landroid/widget/ExpandableListView;Landroid/view/View;IIJ)Z
    .locals 7
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "childPosition"
    .parameter "id"

    .prologue
    const/4 v6, 0x0

    .line 563
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 564
    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->child:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    const/4 v5, 0x1

    aget-object v3, v3, v5

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 565
    .local v1, childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 566
    .local v2, map:Ljava/util/HashMap;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 567
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "filmName"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 568
    const-string v3, "filmId"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    const-string v3, "date"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 570
    const-string v3, "noplan"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 571
    const-string v3, "city"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 572
    const-string v4, "cinemaCode"

    const-string v3, "cinemaCode"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    const-string v4, "cinemaName"

    const-string v3, "cinemaName"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    const-string v4, "cinemaDistrict"

    const-string v3, "cinemaDistrict"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    const-string v4, "gis_x"

    const-string v3, "gis_x"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    const-string v4, "gis_y"

    const-string v3, "gis_y"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const-string v3, "dateIndex"

    iget v4, p0, Lcom/ub/main/movie/MovieCinema;->dateIndex:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    const-class v3, Lcom/ub/main/movie/CinemaSchedule;

    invoke-static {p0, v3, v6, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 581
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #childList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v2           #map:Ljava/util/HashMap;
    :cond_0
    return v6
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 503
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 509
    :goto_0
    return-void

    .line 506
    :pswitch_0
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieCinema;->finish()V

    goto :goto_0

    .line 503
    :pswitch_data_0
    .packed-switch 0x7f080142
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Lcom/ub/main/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    const v0, 0x7f030033

    invoke-virtual {p0, v0}, Lcom/ub/main/movie/MovieCinema;->setContentView(I)V

    .line 90
    invoke-direct {p0}, Lcom/ub/main/movie/MovieCinema;->initModel()V

    .line 91
    invoke-direct {p0}, Lcom/ub/main/movie/MovieCinema;->initView()V

    .line 92
    invoke-direct {p0}, Lcom/ub/main/movie/MovieCinema;->initControl()V

    .line 93
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 524
    invoke-super {p0}, Lcom/ub/main/BaseActivity;->onDestroy()V

    .line 525
    return-void
.end method

.method public onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 6
    .parameter "parent"
    .parameter "v"
    .parameter "groupPosition"
    .parameter "id"

    .prologue
    const/4 v5, 0x0

    .line 533
    iput p3, p0, Lcom/ub/main/movie/MovieCinema;->iSelectIndex:I

    .line 534
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 535
    iget-object v3, p0, Lcom/ub/main/movie/MovieCinema;->group:Ljava/util/ArrayList;

    invoke-virtual {v3, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    .line 536
    .local v2, obj:[Ljava/lang/Object;
    aget-object v3, v2, v5

    const-string v4, "1"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 537
    const/4 v3, 0x1

    aget-object v1, v2, v3

    check-cast v1, Ljava/util/HashMap;

    .line 538
    .local v1, map:Ljava/util/HashMap;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 539
    .local v0, bundle:Landroid/os/Bundle;
    const-string v3, "filmName"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->film_name:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const-string v3, "filmId"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->film_id:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    const-string v3, "date"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->plan_date:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 542
    const-string v3, "noplan"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->isClick:[I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 543
    const-string v3, "city"

    iget-object v4, p0, Lcom/ub/main/movie/MovieCinema;->city:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const-string v4, "cinemaCode"

    const-string v3, "cinemaCode"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const-string v4, "cinemaName"

    const-string v3, "cinemaName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    const-string v4, "cinemaDistrict"

    const-string v3, "cinemaDistrict"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    const-string v4, "gis_x"

    const-string v3, "gis_x"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 548
    const-string v4, "gis_y"

    const-string v3, "gis_y"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 549
    const-string v3, "dateIndex"

    iget v4, p0, Lcom/ub/main/movie/MovieCinema;->dateIndex:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 550
    const-class v3, Lcom/ub/main/movie/CinemaSchedule;

    invoke-static {p0, v3, v5, v0}, Lcom/ub/main/util/Tool;->forwardTarget(Landroid/app/Activity;Ljava/lang/Class;ILandroid/os/Bundle;)V

    .line 554
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #map:Ljava/util/HashMap;
    .end local v2           #obj:[Ljava/lang/Object;
    :cond_0
    return v5
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 514
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 515
    invoke-virtual {p0}, Lcom/ub/main/movie/MovieCinema;->finish()V

    .line 516
    const/4 v0, 0x1

    .line 518
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/ub/main/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method
