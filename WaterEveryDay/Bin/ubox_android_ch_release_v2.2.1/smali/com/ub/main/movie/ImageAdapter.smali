.class public Lcom/ub/main/movie/ImageAdapter;
.super Landroid/widget/BaseAdapter;
.source "ImageAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/movie/ImageAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private activity:Landroid/app/Activity;

.field private mContext:Landroid/content/Context;

.field mGalleryItemBackground:I

.field private mImageIds:[I

.field private mImages:[Landroid/widget/ImageView;

.field private originalImage:[Landroid/graphics/Bitmap;

.field private url:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;[Landroid/graphics/Bitmap;[Ljava/lang/String;)V
    .locals 1
    .parameter "c"
    .parameter "image"
    .parameter "url"

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 40
    iput-object p3, p0, Lcom/ub/main/movie/ImageAdapter;->url:[Ljava/lang/String;

    .line 41
    iput-object p1, p0, Lcom/ub/main/movie/ImageAdapter;->mContext:Landroid/content/Context;

    .line 42
    check-cast p1, Landroid/app/Activity;

    .end local p1
    iput-object p1, p0, Lcom/ub/main/movie/ImageAdapter;->activity:Landroid/app/Activity;

    .line 43
    iput-object p2, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    .line 44
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    .line 47
    :cond_0
    return-void
.end method


# virtual methods
.method public createReflectedImages()Z
    .locals 26

    .prologue
    .line 133
    const/16 v24, 0x4

    .line 137
    .local v24, reflectionGap:I
    const/16 v20, 0x0

    .line 138
    .local v20, index:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    if-nez v3, :cond_0

    .line 139
    const/4 v3, 0x0

    .line 253
    :goto_0
    return v3

    .line 140
    :cond_0
    const/16 v18, 0x0

    .local v18, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    array-length v3, v3

    move/from16 v0, v18

    if-lt v0, v3, :cond_1

    .line 253
    const/4 v3, 0x1

    goto :goto_0

    .line 148
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v25

    .line 150
    .local v25, width:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v17

    .line 155
    .local v17, height:I
    new-instance v22, Landroid/graphics/Matrix;

    invoke-direct/range {v22 .. v22}, Landroid/graphics/Matrix;-><init>()V

    .line 157
    .local v22, matrix:Landroid/graphics/Matrix;
    const/high16 v3, 0x3f80

    const/high16 v4, -0x4080

    move-object/from16 v0, v22

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 177
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 175
    move/from16 v0, v25

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v16

    .line 185
    .local v16, bitmapWithReflection:Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    move-object/from16 v0, v16

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 189
    .local v2, canvas:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v18

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 193
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    .line 195
    .local v7, deafaultPaint:Landroid/graphics/Paint;
    const/4 v3, 0x0

    move/from16 v0, v17

    int-to-float v4, v0

    move/from16 v0, v25

    int-to-float v5, v0

    add-int/lit8 v6, v17, 0x4

    int-to-float v6, v6

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 211
    new-instance v23, Landroid/graphics/Paint;

    invoke-direct/range {v23 .. v23}, Landroid/graphics/Paint;-><init>()V

    .line 213
    .local v23, paint:Landroid/graphics/Paint;
    new-instance v8, Landroid/graphics/LinearGradient;

    const/4 v9, 0x0

    .line 215
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    aget-object v3, v3, v18

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v10, v3

    const/4 v11, 0x0

    .line 217
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-float v12, v3

    .line 219
    const v13, 0x70ffffff

    const v14, 0xffffff

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 213
    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 223
    .local v8, shader:Landroid/graphics/LinearGradient;
    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 227
    new-instance v3, Landroid/graphics/PorterDuffXfermode;

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, v23

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 231
    const/4 v10, 0x0

    move/from16 v0, v17

    int-to-float v11, v0

    move/from16 v0, v25

    int-to-float v12, v0

    .line 233
    invoke-virtual/range {v16 .. v16}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    int-to-float v13, v3

    move-object v9, v2

    move-object/from16 v14, v23

    .line 231
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 237
    new-instance v19, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v0, v19

    invoke-direct {v0, v3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 239
    .local v19, imageView:Landroid/widget/ImageView;
    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 240
    sget v3, Lcom/ub/main/util/UIConfig;->SCREEN_HEIGHT:I

    const/16 v4, 0x1e0

    if-gt v3, v4, :cond_2

    .line 241
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    const/16 v4, 0x32

    const/16 v5, 0x50

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 247
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    add-int/lit8 v21, v20, 0x1

    .end local v20           #index:I
    .local v21, index:I
    aput-object v19, v3, v20

    .line 140
    add-int/lit8 v18, v18, 0x1

    move/from16 v20, v21

    .end local v21           #index:I
    .restart local v20       #index:I
    goto/16 :goto_1

    .line 243
    :cond_2
    new-instance v3, Landroid/widget/Gallery$LayoutParams;

    const/16 v4, 0x50

    const/16 v5, 0xfa

    invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2
.end method

.method public createReflectedImages(I)Z
    .locals 2
    .parameter "index"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 126
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    .line 262
    const/4 v0, 0x0

    .line 264
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    array-length v0, v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 272
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 280
    int-to-long v0, p1

    return-wide v0
.end method

.method public getScale(ZI)F
    .locals 6
    .parameter "focused"
    .parameter "offset"

    .prologue
    .line 402
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
    .locals 5
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 336
    iget-object v4, p0, Lcom/ub/main/movie/ImageAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->url:[Ljava/lang/String;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-static {v4, v3}, Lcom/ub/main/net/ImageLoadingTask;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    move-result-object v0

    .line 337
    .local v0, cacheItem:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    if-eqz v0, :cond_2

    .line 338
    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-static {v3}, Lcom/ub/main/net/ImageLoadingTask;->clearViewMap(Landroid/view/View;)V

    .line 339
    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->setViewImage(Landroid/widget/ImageView;)V

    .line 381
    :cond_0
    :goto_1
    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    return-object v3

    .line 336
    .end local v0           #cacheItem:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :cond_1
    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->url:[Ljava/lang/String;

    aget-object v3, v3, p1

    goto :goto_0

    .line 341
    .restart local v0       #cacheItem:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :cond_2
    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->mContext:Landroid/content/Context;

    const v4, 0x7f020098

    invoke-static {v3, v4}, Lcom/ub/main/net/ImageLoadingTask;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 342
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 343
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask;->getEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 344
    new-instance v2, Lcom/ub/main/net/ImageLoadingTask;

    invoke-direct {v2}, Lcom/ub/main/net/ImageLoadingTask;-><init>()V

    .line 345
    .local v2, task:Lcom/ub/main/net/ImageLoadingTask;
    iget-object v3, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3, v2}, Lcom/ub/main/net/ImageLoadingTask;->putViewMap(ILcom/ub/main/net/ImageLoadingTask;)V

    goto :goto_1
.end method

.method public setImages([Landroid/graphics/Bitmap;[Ljava/lang/String;)V
    .locals 1
    .parameter "images"
    .parameter "url"

    .prologue
    .line 63
    iput-object p2, p0, Lcom/ub/main/movie/ImageAdapter;->url:[Ljava/lang/String;

    .line 64
    iput-object p1, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    .line 65
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->originalImage:[Landroid/graphics/Bitmap;

    array-length v0, v0

    new-array v0, v0, [Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/ub/main/movie/ImageAdapter;->mImages:[Landroid/widget/ImageView;

    .line 67
    :cond_0
    return-void
.end method
