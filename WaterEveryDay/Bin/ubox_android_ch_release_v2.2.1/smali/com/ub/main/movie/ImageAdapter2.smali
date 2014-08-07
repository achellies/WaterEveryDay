.class public Lcom/ub/main/movie/ImageAdapter2;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/movie/ImageAdapter2$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/app/Activity;

.field mGalleryItemBackground:I

.field private originalImage:[Landroid/graphics/Bitmap;

.field private url:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;[Landroid/graphics/Bitmap;[Ljava/lang/String;)V
    .locals 0
    .parameter "c"
    .parameter "image"
    .parameter "url"

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 24
    iput-object p3, p0, Lcom/ub/main/movie/ImageAdapter2;->url:[Ljava/lang/String;

    .line 25
    iput-object p1, p0, Lcom/ub/main/movie/ImageAdapter2;->mContext:Landroid/app/Activity;

    .line 26
    iput-object p2, p0, Lcom/ub/main/movie/ImageAdapter2;->originalImage:[Landroid/graphics/Bitmap;

    .line 29
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter2;->originalImage:[Landroid/graphics/Bitmap;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 56
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 60
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScale(ZI)F
    .locals 6
    .parameter "focused"
    .parameter "offset"

    .prologue
    .line 109
    const/4 v0, 0x0

    const/high16 v1, 0x3f80

    const-wide/high16 v2, 0x4000

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v1, 0x0

    const v4, 0x7f020098

    .line 65
    const/4 v3, 0x0

    .line 66
    .local v3, view:Landroid/widget/ImageView;
    if-nez p2, :cond_2

    .line 67
    new-instance v3, Landroid/widget/ImageView;

    .end local v3           #view:Landroid/widget/ImageView;
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter2;->mContext:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v3, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 68
    .restart local v3       #view:Landroid/widget/ImageView;
    sget v0, Lcom/ub/main/util/UIConfig;->SCREEN_HEIGHT:I

    const/16 v2, 0x1e0

    if-gt v0, v2, :cond_1

    .line 69
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/16 v2, 0x32

    const/16 v5, 0x46

    invoke-direct {v0, v2, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    :goto_0
    iget-object v2, p0, Lcom/ub/main/movie/ImageAdapter2;->mContext:Landroid/app/Activity;

    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter2;->url:[Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v0, v1

    :goto_1
    invoke-static {v2, v0}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v7

    .line 77
    .local v7, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v7, :cond_4

    .line 78
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-static {v0}, Lcom/ub/main/net/ImageLoadingTask2;->clearViewMap(I)V

    .line 79
    invoke-virtual {v7, v3}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 90
    :cond_0
    :goto_2
    return-object v3

    .line 71
    .end local v7           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_1
    new-instance v0, Landroid/widget/Gallery$LayoutParams;

    const/16 v2, 0x50

    const/16 v5, 0xfa

    invoke-direct {v0, v2, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    move-object v3, p2

    .line 73
    check-cast v3, Landroid/widget/ImageView;

    goto :goto_0

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter2;->url:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_1

    .line 80
    .restart local v7       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_4
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter2;->url:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter2;->mContext:Landroid/app/Activity;

    invoke-static {v0, v4}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 82
    .local v8, drawable:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->getEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance v9, Ljava/util/LinkedList;

    invoke-direct {v9}, Ljava/util/LinkedList;-><init>()V

    .line 85
    .local v9, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo;

    iget-object v2, p0, Lcom/ub/main/movie/ImageAdapter2;->url:[Ljava/lang/String;

    if-nez v2, :cond_5

    move-object v2, v1

    :goto_3
    iget-object v5, p0, Lcom/ub/main/movie/ImageAdapter2;->mContext:Landroid/app/Activity;

    sget-object v6, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/ub/main/net/ImageLoadingTaskInfo;-><init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V

    invoke-virtual {v9, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 86
    new-instance v0, Lcom/ub/main/net/ImageLoadingTask2;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-direct {v0, v9, v1}, Lcom/ub/main/net/ImageLoadingTask2;-><init>(Ljava/util/LinkedList;I)V

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->start()V

    goto :goto_2

    .line 85
    :cond_5
    iget-object v1, p0, Lcom/ub/main/movie/ImageAdapter2;->url:[Ljava/lang/String;

    aget-object v2, v1, p1

    goto :goto_3
.end method

.method public setImages([Landroid/graphics/Bitmap;[Ljava/lang/String;)V
    .locals 0
    .parameter "images"
    .parameter "url"

    .prologue
    .line 45
    iput-object p2, p0, Lcom/ub/main/movie/ImageAdapter2;->url:[Ljava/lang/String;

    .line 46
    iput-object p1, p0, Lcom/ub/main/movie/ImageAdapter2;->originalImage:[Landroid/graphics/Bitmap;

    .line 49
    return-void
.end method
