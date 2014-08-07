.class public Lcom/ub/main/net/ImageLoadingTaskInfo;
.super Ljava/lang/Object;
.source "ImageLoadingTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;
    }
.end annotation


# instance fields
.field public defaultDrawableId:I

.field private grayBitmap:Z

.field public final id:I

.field public mContext:Landroid/app/Activity;

.field public mDrawable:Landroid/graphics/drawable/Drawable;

.field public mLoadingView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mUrl:Ljava/lang/String;

.field public final mView:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public final mViewCode:I

.field private final m_observer:Lcom/ub/main/net/ImageLoadingObserver;

.field public final type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;


# direct methods
.method public constructor <init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingObserver;)V
    .locals 1
    .parameter "id"
    .parameter "imageUrl"
    .parameter "view"
    .parameter "defaultDrawableId"
    .parameter "context"
    .parameter "observer"

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->grayBitmap:Z

    .line 108
    iput p1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    .line 109
    iput-object p2, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    .line 110
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mView:Ljava/lang/ref/WeakReference;

    .line 111
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mViewCode:I

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    iput-object p5, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    .line 114
    iput p4, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    .line 115
    sget-object v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->observer_mode:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 116
    iput-object p6, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->m_observer:Lcom/ub/main/net/ImageLoadingObserver;

    .line 117
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V
    .locals 2
    .parameter "id"
    .parameter "imageUrl"
    .parameter "view"
    .parameter "defaultDrawableId"
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->grayBitmap:Z

    .line 66
    iput p1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    .line 67
    iput-object p2, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    .line 68
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mView:Ljava/lang/ref/WeakReference;

    .line 69
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mViewCode:I

    .line 70
    iput-object v1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 71
    iput-object p5, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    .line 72
    iput p4, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    .line 73
    iput-object p6, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 74
    iput-object v1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->m_observer:Lcom/ub/main/net/ImageLoadingObserver;

    .line 75
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/view/View;Landroid/view/View;ILandroid/app/Activity;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;)V
    .locals 2
    .parameter "id"
    .parameter "imageUrl"
    .parameter "view"
    .parameter "loadView"
    .parameter "defaultDrawableId"
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v1, 0x0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const/4 v0, -0x1

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->grayBitmap:Z

    .line 88
    iput p1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->id:I

    .line 89
    iput-object p2, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    .line 90
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mView:Ljava/lang/ref/WeakReference;

    .line 91
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mLoadingView:Ljava/lang/ref/WeakReference;

    .line 92
    invoke-virtual {p3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mViewCode:I

    .line 93
    iput-object v1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object p6, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    .line 95
    iput p5, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    .line 96
    iput-object p7, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 97
    iput-object v1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->m_observer:Lcom/ub/main/net/ImageLoadingObserver;

    .line 98
    return-void
.end method


# virtual methods
.method public getObserver()Lcom/ub/main/net/ImageLoadingObserver;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->m_observer:Lcom/ub/main/net/ImageLoadingObserver;

    return-object v0
.end method

.method public isGrayBitmap()Z
    .locals 1

    .prologue
    .line 33
    iget-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->grayBitmap:Z

    return v0
.end method

.method public setGrayBitmap(Z)Lcom/ub/main/net/ImageLoadingTaskInfo;
    .locals 0
    .parameter "gb"

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/ub/main/net/ImageLoadingTaskInfo;->grayBitmap:Z

    .line 29
    return-object p0
.end method
