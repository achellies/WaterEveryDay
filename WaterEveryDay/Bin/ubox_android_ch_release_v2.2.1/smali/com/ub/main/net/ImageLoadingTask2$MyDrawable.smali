.class public Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
.super Ljava/lang/Object;
.source "ImageLoadingTask2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/net/ImageLoadingTask2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyDrawable"
.end annotation


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->url:Ljava/lang/String;

    .line 39
    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 37
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .parameter "o"

    .prologue
    .line 48
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->url:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public setViewImage(Landroid/widget/ImageView;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 43
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 44
    return-void
.end method
