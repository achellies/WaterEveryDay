.class public Lcom/ub/main/movie/GalleryFlow;
.super Landroid/widget/Gallery;
.source "GalleryFlow.java"


# instance fields
.field private mAlphaMode:Z

.field private mCamera:Landroid/graphics/Camera;

.field private mCircleMode:Z

.field private mCoveflowCenter:I

.field private mMaxRotationAngle:I

.field private mMaxZoom:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x1

    .line 22
    invoke-direct {p0, p1}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;)V

    .line 14
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    .line 15
    const/16 v0, 0x37

    iput v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    .line 16
    const/16 v0, -0x1a4

    iput v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxZoom:I

    .line 18
    iput-boolean v1, p0, Lcom/ub/main/movie/GalleryFlow;->mAlphaMode:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCircleMode:Z

    .line 23
    invoke-virtual {p0, v1}, Lcom/ub/main/movie/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v1, 0x1

    .line 27
    invoke-direct {p0, p1, p2}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 14
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    .line 15
    const/16 v0, 0x37

    iput v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    .line 16
    const/16 v0, -0x1a4

    iput v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxZoom:I

    .line 18
    iput-boolean v1, p0, Lcom/ub/main/movie/GalleryFlow;->mAlphaMode:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCircleMode:Z

    .line 28
    invoke-virtual {p0, v1}, Lcom/ub/main/movie/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Gallery;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 14
    new-instance v0, Landroid/graphics/Camera;

    invoke-direct {v0}, Landroid/graphics/Camera;-><init>()V

    iput-object v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    .line 15
    const/16 v0, 0x37

    iput v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    .line 16
    const/16 v0, -0x1a4

    iput v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxZoom:I

    .line 18
    iput-boolean v1, p0, Lcom/ub/main/movie/GalleryFlow;->mAlphaMode:Z

    .line 19
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCircleMode:Z

    .line 33
    invoke-virtual {p0, v1}, Lcom/ub/main/movie/GalleryFlow;->setStaticTransformationsEnabled(Z)V

    .line 34
    return-void
.end method

.method private getCenterOfCoverflow()I
    .locals 2

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/ub/main/movie/GalleryFlow;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/ub/main/movie/GalleryFlow;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/ub/main/movie/GalleryFlow;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    .line 70
    invoke-virtual {p0}, Lcom/ub/main/movie/GalleryFlow;->getPaddingLeft()I

    move-result v1

    .line 69
    add-int/2addr v0, v1

    return v0
.end method

.method private static getCenterOfView(Landroid/view/View;)I
    .locals 2
    .parameter "view"

    .prologue
    .line 74
    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    return v0
.end method

.method private transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;II)V
    .locals 11
    .parameter "child"
    .parameter "t"
    .parameter "rotationAngle"
    .parameter "d"

    .prologue
    .line 132
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 133
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v1

    .line 134
    .local v1, imageMatrix:Landroid/graphics/Matrix;
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v0, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 135
    .local v0, imageHeight:I
    invoke-virtual {p1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    iget v2, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 136
    .local v2, imageWidth:I
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 140
    .local v3, rotation:I
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x4248

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 142
    iget v5, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    if-gt v3, v5, :cond_1

    .line 143
    iget v5, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxZoom:I

    int-to-double v5, v5

    int-to-double v7, v3

    const-wide/high16 v9, 0x3ff8

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    double-to-float v4, v5

    .line 144
    .local v4, zoomAmount:F
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v4}, Landroid/graphics/Camera;->translate(FFF)V

    .line 145
    iget-boolean v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCircleMode:Z

    if-eqz v5, :cond_0

    .line 146
    const/16 v5, 0x28

    if-ge v3, v5, :cond_2

    .line 147
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/high16 v7, 0x431b

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    .line 151
    :cond_0
    :goto_0
    iget-boolean v5, p0, Lcom/ub/main/movie/GalleryFlow;->mAlphaMode:Z

    if-eqz v5, :cond_1

    .line 152
    const-wide v5, 0x406fe00000000000L

    int-to-double v7, v3

    const-wide/high16 v9, 0x4004

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    double-to-int v5, v5

    invoke-virtual {p1, v5}, Landroid/widget/ImageView;->setAlpha(I)V

    .line 158
    .end local v4           #zoomAmount:F
    :cond_1
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    int-to-float v6, p3

    invoke-virtual {v5, v6}, Landroid/graphics/Camera;->rotateY(F)V

    .line 159
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5, v1}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 161
    div-int/lit8 v5, v2, 0x2

    neg-int v5, v5

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    neg-int v6, v6

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 162
    div-int/lit8 v5, v2, 0x2

    int-to-float v5, v5

    div-int/lit8 v6, v0, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 163
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    invoke-virtual {v5}, Landroid/graphics/Camera;->restore()V

    .line 164
    return-void

    .line 149
    .restart local v4       #zoomAmount:F
    :cond_2
    iget-object v5, p0, Lcom/ub/main/movie/GalleryFlow;->mCamera:Landroid/graphics/Camera;

    const/4 v6, 0x0

    const/high16 v7, 0x437f

    int-to-float v8, v3

    const/high16 v9, 0x4020

    mul-float/2addr v8, v9

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/graphics/Camera;->translate(FFF)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaMode()Z
    .locals 1

    .prologue
    .line 53
    iget-boolean v0, p0, Lcom/ub/main/movie/GalleryFlow;->mAlphaMode:Z

    return v0
.end method

.method protected getChildStaticTransformation(Landroid/view/View;Landroid/view/animation/Transformation;)Z
    .locals 6
    .parameter "child"
    .parameter "t"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 80
    invoke-static {p1}, Lcom/ub/main/movie/GalleryFlow;->getCenterOfView(Landroid/view/View;)I

    move-result v0

    .line 81
    .local v0, childCenter:I
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 82
    .local v1, childWidth:I
    const/4 v2, 0x0

    .line 83
    .local v2, rotationAngle:I
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->clear()V

    .line 84
    sget v4, Landroid/view/animation/Transformation;->TYPE_MATRIX:I

    invoke-virtual {p2, v4}, Landroid/view/animation/Transformation;->setTransformationType(I)V

    .line 85
    iget v4, p0, Lcom/ub/main/movie/GalleryFlow;->mCoveflowCenter:I

    if-ne v0, v4, :cond_0

    .line 86
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-direct {p0, p1, p2, v5, v5}, Lcom/ub/main/movie/GalleryFlow;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;II)V

    .line 98
    .end local v1           #childWidth:I
    :goto_0
    return v3

    .line 89
    .restart local v1       #childWidth:I
    .restart local p1
    :cond_0
    iget v4, p0, Lcom/ub/main/movie/GalleryFlow;->mCoveflowCenter:I

    sub-int/2addr v4, v0

    int-to-float v4, v4

    int-to-float v5, v1

    div-float/2addr v4, v5

    iget v5, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    int-to-float v5, v5

    mul-float/2addr v4, v5

    float-to-int v2, v4

    .line 91
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget v5, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    if-le v4, v5, :cond_1

    .line 92
    if-gez v2, :cond_3

    iget v4, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    neg-int v2, v4

    .line 95
    :cond_1
    :goto_1
    check-cast p1, Landroid/widget/ImageView;

    .line 96
    .end local p1
    iget v4, p0, Lcom/ub/main/movie/GalleryFlow;->mCoveflowCenter:I

    sub-int/2addr v4, v0

    if-nez v1, :cond_2

    move v1, v3

    .end local v1           #childWidth:I
    :cond_2
    div-int/2addr v4, v1

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 95
    invoke-direct {p0, p1, p2, v2, v4}, Lcom/ub/main/movie/GalleryFlow;->transformImageBitmap(Landroid/widget/ImageView;Landroid/view/animation/Transformation;II)V

    goto :goto_0

    .line 93
    .restart local v1       #childWidth:I
    .restart local p1
    :cond_3
    iget v2, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    goto :goto_1
.end method

.method public getCircleMode()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCircleMode:Z

    return v0
.end method

.method public getMaxRotationAngle()I
    .locals 1

    .prologue
    .line 37
    iget v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    return v0
.end method

.method public getMaxZoom()I
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxZoom:I

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    .line 116
    invoke-direct {p0}, Lcom/ub/main/movie/GalleryFlow;->getCenterOfCoverflow()I

    move-result v0

    iput v0, p0, Lcom/ub/main/movie/GalleryFlow;->mCoveflowCenter:I

    .line 117
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/Gallery;->onSizeChanged(IIII)V

    .line 118
    return-void
.end method

.method public setAlphaMode(Z)V
    .locals 0
    .parameter "isAlpha"

    .prologue
    .line 57
    iput-boolean p1, p0, Lcom/ub/main/movie/GalleryFlow;->mAlphaMode:Z

    .line 58
    return-void
.end method

.method public setCircleMode(Z)V
    .locals 0
    .parameter "isCircle"

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/ub/main/movie/GalleryFlow;->mCircleMode:Z

    .line 50
    return-void
.end method

.method public setMaxRotationAngle(I)V
    .locals 0
    .parameter "maxRotationAngle"

    .prologue
    .line 41
    iput p1, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxRotationAngle:I

    .line 42
    return-void
.end method

.method public setMaxZoom(I)V
    .locals 0
    .parameter "maxZoom"

    .prologue
    .line 65
    iput p1, p0, Lcom/ub/main/movie/GalleryFlow;->mMaxZoom:I

    .line 66
    return-void
.end method
