.class public Lcom/ub/main/net/ImageLoadingTask;
.super Landroid/os/AsyncTask;
.source "ImageLoadingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/ub/main/net/ImageLoadingTaskInfo;",
        "Ljava/lang/Void;",
        "[",
        "Lcom/ub/main/net/ImageLoadingTaskInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "ImageLoadingTask"

.field public static count:I

.field private static mEnabled:Z

.field private static mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTask$MyDrawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mList:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/ub/main/net/ImageLoadingTask;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mTaskInfo:[Lcom/ub/main/net/ImageLoadingTaskInfo;

.field private taskCode:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType()[I
    .locals 3

    .prologue
    .line 32
    sget-object v0, Lcom/ub/main/net/ImageLoadingTask;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->values()[Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    :try_start_1
    sget-object v1, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_2
    :try_start_2
    sget-object v1, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->observer_mode:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_3
    sput-object v0, Lcom/ub/main/net/ImageLoadingTask;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/net/ImageLoadingTask;->mEnabled:Z

    .line 40
    const/4 v0, 0x0

    sput v0, Lcom/ub/main/net/ImageLoadingTask;->count:I

    .line 71
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    .line 72
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 68
    sget v0, Lcom/ub/main/net/ImageLoadingTask;->count:I

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTask;->taskCode:I

    .line 44
    sget v0, Lcom/ub/main/net/ImageLoadingTask;->count:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/ub/main/net/ImageLoadingTask;->count:I

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTask;->taskCode:I

    .line 45
    iget v0, p0, Lcom/ub/main/net/ImageLoadingTask;->taskCode:I

    invoke-static {v0, p0}, Lcom/ub/main/net/ImageLoadingTask;->putViewMap(ILcom/ub/main/net/ImageLoadingTask;)V

    .line 46
    return-void
.end method

.method public static cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "context"
    .parameter "key"
    .parameter "drawable"

    .prologue
    .line 114
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 115
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 117
    .restart local v0       #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_0
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 120
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    sget v5, Lcom/ub/main/util/UIConfig;->IMAGE_CACHE_COUNT:I

    if-le v3, v5, :cond_1

    .line 121
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    .line 122
    .local v1, obj:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    iget-object v3, v1, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/ub/main/net/ImageLoadingTask;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 125
    .end local v1           #obj:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :cond_1
    new-instance v2, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    invoke-direct {v2}, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;-><init>()V

    .line 126
    .local v2, object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    iput-object p2, v2, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 127
    iput-object p1, v2, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->url:Ljava/lang/String;

    .line 128
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 119
    monitor-exit v4

    .line 131
    return-void

    .line 119
    .end local v2           #object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method public static clearAllTask()V
    .locals 4

    .prologue
    .line 460
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    monitor-enter v3

    .line 461
    :try_start_0
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 462
    .local v1, taskEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/ub/main/net/ImageLoadingTask;>;"
    if-nez v1, :cond_1

    .line 463
    monitor-exit v3

    .line 474
    :goto_0
    return-void

    .line 466
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/net/ImageLoadingTask;

    .line 467
    .local v0, task:Lcom/ub/main/net/ImageLoadingTask;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 468
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/ub/main/net/ImageLoadingTask;->cancel(Z)Z

    .line 465
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTask;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 472
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 460
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static clearCacheImage(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 138
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 139
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    if-eqz v0, :cond_0

    .line 140
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 141
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 146
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 140
    monitor-exit v3

    .line 149
    :cond_0
    return-void

    .line 141
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    .line 142
    .local v1, item:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    iget-object v4, v1, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcom/ub/main/net/ImageLoadingTask;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 143
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 144
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->url:Ljava/lang/String;

    goto :goto_0

    .line 140
    .end local v1           #item:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static clearViewMap(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 447
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    monitor-enter v2

    .line 448
    :try_start_0
    sget-object v1, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/net/ImageLoadingTask;

    .line 449
    .local v0, task:Lcom/ub/main/net/ImageLoadingTask;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 450
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/ub/main/net/ImageLoadingTask;->cancel(Z)Z

    .line 447
    :cond_0
    monitor-exit v2

    .line 454
    return-void

    .line 447
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getEnabled()Z
    .locals 1

    .prologue
    .line 155
    sget-boolean v0, Lcom/ub/main/net/ImageLoadingTask;->mEnabled:Z

    return v0
.end method

.method public static getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    .locals 5
    .parameter "context"
    .parameter "key"

    .prologue
    .line 82
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 83
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    if-eqz v0, :cond_0

    .line 84
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 85
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 84
    :goto_1
    monitor-exit v4

    .line 104
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 86
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    .line 87
    .local v2, object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    if-nez v2, :cond_2

    .line 88
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 84
    .end local v1           #i:I
    .end local v2           #object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 90
    .restart local v1       #i:I
    .restart local v2       #object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :cond_2
    :try_start_1
    iget-object v3, v2, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->url:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 93
    iget-object v3, v2, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 94
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 97
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 98
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 99
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 85
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "res_id"

    .prologue
    .line 194
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ub/main/net/ImageLoadingTask;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    move-result-object v2

    .line 196
    .local v2, item:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    if-eqz v2, :cond_0

    .line 197
    iget-object v1, v2, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 202
    :goto_0
    return-object v1

    .line 199
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 200
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 201
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/ub/main/net/ImageLoadingTask;->cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static putViewMap(ILcom/ub/main/net/ImageLoadingTask;)V
    .locals 3
    .parameter "viewCode"
    .parameter "task"

    .prologue
    .line 436
    sget-object v1, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    monitor-enter v1

    .line 438
    :try_start_0
    sget-object v0, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    monitor-exit v1

    .line 440
    return-void

    .line 436
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static recycleBitmapOfThView(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 371
    const/4 v0, 0x0

    .line 373
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 374
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 379
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 380
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    .line 382
    invoke-static {p0, v0}, Lcom/ub/main/net/ImageLoadingTask;->recycleImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 383
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 384
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 388
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 391
    :goto_2
    return v1

    .line 375
    .restart local p1
    :cond_2
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 376
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_3
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 386
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 391
    .restart local p1
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method public static recycleImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "context"
    .parameter "image"

    .prologue
    .line 399
    if-eqz p1, :cond_0

    .line 400
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 401
    .local v1, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    if-eqz v1, :cond_0

    .line 402
    sget-object v5, Lcom/ub/main/net/ImageLoadingTask;->mImageCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 403
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 402
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 413
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 414
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 417
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    .end local v2           #i:I
    :cond_0
    return-void

    .line 404
    .restart local v1       #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask$MyDrawable;>;"
    .restart local v2       #i:I
    .restart local p1
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    .line 405
    .local v3, object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    iget-object v4, v3, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 407
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 402
    .end local v2           #i:I
    .end local v3           #object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 403
    .restart local v2       #i:I
    .restart local v3       #object:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static recycleImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 424
    if-eqz p0, :cond_0

    .line 425
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 426
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 427
    sget v1, Lcom/ub/main/net/ImageLoadingTask;->count:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Lcom/ub/main/net/ImageLoadingTask;->count:I

    .line 429
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    :cond_0
    return-void
.end method

.method public static setEnabled(Z)V
    .locals 10
    .parameter "value"

    .prologue
    const/4 v7, 0x0

    .line 163
    sget-boolean v6, Lcom/ub/main/net/ImageLoadingTask;->mEnabled:Z

    if-eq v6, p0, :cond_0

    .line 164
    sput-boolean p0, Lcom/ub/main/net/ImageLoadingTask;->mEnabled:Z

    .line 165
    if-eqz p0, :cond_0

    .line 166
    sget-object v6, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    invoke-virtual {v6}, Ljava/util/Hashtable;->values()Ljava/util/Collection;

    move-result-object v6

    new-array v8, v7, [Lcom/ub/main/net/ImageLoadingTask;

    invoke-interface {v6, v8}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lcom/ub/main/net/ImageLoadingTask;

    .line 167
    .local v3, lists:[Lcom/ub/main/net/ImageLoadingTask;
    if-eqz v3, :cond_0

    array-length v6, v3

    if-lez v6, :cond_0

    .line 168
    new-instance v5, Ljava/util/ArrayList;

    array-length v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 169
    .local v5, tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    const/4 v1, 0x0

    .local v1, i:I
    array-length v4, v3

    .local v4, size:I
    :goto_0
    if-lt v1, v4, :cond_1

    .line 177
    :try_start_0
    new-instance v7, Lcom/ub/main/net/ImageLoadingTask;

    invoke-direct {v7}, Lcom/ub/main/net/ImageLoadingTask;-><init>()V

    const/4 v6, 0x0

    new-array v6, v6, [Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {v7, v6}, Lcom/ub/main/net/ImageLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 184
    .end local v1           #i:I
    .end local v3           #lists:[Lcom/ub/main/net/ImageLoadingTask;
    .end local v4           #size:I
    .end local v5           #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_0
    :goto_1
    return-void

    .line 170
    .restart local v1       #i:I
    .restart local v3       #lists:[Lcom/ub/main/net/ImageLoadingTask;
    .restart local v4       #size:I
    .restart local v5       #tasks:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    :cond_1
    aget-object v6, v3, v1

    iget-object v6, v6, Lcom/ub/main/net/ImageLoadingTask;->mTaskInfo:[Lcom/ub/main/net/ImageLoadingTaskInfo;

    if-eqz v6, :cond_2

    .line 171
    aget-object v6, v3, v1

    iget-object v8, v6, Lcom/ub/main/net/ImageLoadingTask;->mTaskInfo:[Lcom/ub/main/net/ImageLoadingTaskInfo;

    array-length v9, v8

    move v6, v7

    :goto_2
    if-lt v6, v9, :cond_3

    .line 169
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 171
    :cond_3
    aget-object v2, v8, v6

    .line 172
    .local v2, item:Lcom/ub/main/net/ImageLoadingTaskInfo;
    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 178
    .end local v2           #item:Lcom/ub/main/net/ImageLoadingTaskInfo;
    :catch_0
    move-exception v0

    .line 179
    .local v0, e:Ljava/util/concurrent/RejectedExecutionException;
    invoke-virtual {v0}, Ljava/util/concurrent/RejectedExecutionException;->printStackTrace()V

    goto :goto_1
.end method


# virtual methods
.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {p0, p1}, Lcom/ub/main/net/ImageLoadingTask;->doInBackground([Lcom/ub/main/net/ImageLoadingTaskInfo;)[Lcom/ub/main/net/ImageLoadingTaskInfo;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Lcom/ub/main/net/ImageLoadingTaskInfo;)[Lcom/ub/main/net/ImageLoadingTaskInfo;
    .locals 17
    .parameter "imageTasks"

    .prologue
    .line 261
    const-string v12, "ImageLoadingTask"

    const-string v13, "ImageLoadingTask: doInBackground()"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    move-object/from16 v0, p1

    array-length v12, v0

    if-nez v12, :cond_1

    .line 263
    const/16 p1, 0x0

    .line 351
    .end local p1
    :cond_0
    return-object p1

    .line 265
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ub/main/net/ImageLoadingTask;->mTaskInfo:[Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 266
    move-object/from16 v0, p1

    array-length v14, v0

    const/4 v12, 0x0

    move v13, v12

    :goto_0
    if-ge v13, v14, :cond_0

    aget-object v10, p1, v13

    .line 267
    .local v10, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    if-nez v10, :cond_3

    .line 266
    :cond_2
    :goto_1
    add-int/lit8 v12, v13, 0x1

    move v13, v12

    goto :goto_0

    .line 270
    :cond_3
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v12}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/View;

    .line 271
    .local v11, view:Landroid/view/View;
    if-eqz v11, :cond_2

    .line 276
    :try_start_0
    const-string v12, "ImageLoadingTask"

    new-instance v15, Ljava/lang/StringBuilder;

    const-string v16, "mList Size:"

    invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v16, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    invoke-virtual/range {v16 .. v16}, Ljava/util/Hashtable;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v12, v15}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const/4 v4, 0x0

    .line 278
    .local v4, count:I
    :cond_4
    :goto_2
    sget-object v12, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    invoke-virtual {v12}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    const/16 v15, 0x14

    if-gt v12, v15, :cond_5

    .line 289
    .end local v4           #count:I
    :goto_3
    sget-boolean v12, Lcom/ub/main/net/ImageLoadingTask;->mEnabled:Z

    if-eqz v12, :cond_2

    .line 293
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    if-eqz v12, :cond_2

    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_2

    .line 294
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v12}, Lcom/ub/main/util/Tool;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    .line 295
    .local v8, image_file:Ljava/io/File;
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget-object v15, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v12, v15}, Lcom/ub/main/net/ImageLoadingTask;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    move-result-object v3

    .line 296
    .local v3, cacheItem:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    if-eqz v3, :cond_6

    .line 297
    iget-object v12, v3, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    .line 279
    .end local v3           #cacheItem:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    .end local v8           #image_file:Ljava/io/File;
    .restart local v4       #count:I
    :cond_5
    const-wide/16 v15, 0xbb8

    :try_start_1
    invoke-static/range {v15 .. v16}, Ljava/lang/Thread;->sleep(J)V

    .line 280
    add-int/lit8 v4, v4, 0x1

    .line 281
    const/4 v12, 0x4

    if-le v4, v12, :cond_4

    .line 282
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask;->clearAllTask()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 285
    .end local v4           #count:I
    :catch_0
    move-exception v7

    .line 286
    .local v7, e:Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 301
    .end local v7           #e:Ljava/lang/InterruptedException;
    .restart local v3       #cacheItem:Lcom/ub/main/net/ImageLoadingTask$MyDrawable;
    .restart local v8       #image_file:Ljava/io/File;
    :cond_6
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_8

    .line 302
    const/4 v6, 0x0

    .line 304
    .local v6, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_2
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    .line 308
    :goto_4
    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 309
    .local v9, softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable;

    iput-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 310
    const/4 v6, 0x0

    .line 339
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v9           #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_7
    :goto_5
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_2

    .line 340
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget-object v15, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v12, v15}, Lcom/ub/main/net/ImageLoadingTask;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask$MyDrawable;

    move-result-object v3

    .line 341
    if-eqz v3, :cond_b

    .line 342
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v12}, Lcom/ub/main/net/ImageLoadingTask;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 343
    iget-object v12, v3, Lcom/ub/main/net/ImageLoadingTask$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    iput-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 305
    .restart local v6       #drawable:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v7

    .line 306
    .local v7, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_4

    .line 313
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_8
    const/4 v5, 0x1

    .line 314
    .local v5, displaySave:Z
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    invoke-static {v12}, Lcom/ub/main/util/Tool;->haveInternet(Landroid/content/Context;)Z

    move-result v12

    if-nez v12, :cond_9

    .line 315
    const/4 v12, 0x0

    iput-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_1

    .line 318
    :cond_9
    if-eqz v5, :cond_7

    .line 319
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v12

    const-string v15, "mounted"

    invoke-virtual {v12, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_a

    .line 320
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v12}, Lcom/ub/main/net/HttpStack;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 321
    .local v2, bmp:Landroid/graphics/Bitmap;
    if-eqz v2, :cond_7

    .line 322
    new-instance v12, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v12, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 325
    .end local v2           #bmp:Landroid/graphics/Bitmap;
    :cond_a
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v12, v8}, Lcom/ub/main/net/HttpStack;->writeImageInSDCard(Ljava/lang/String;Ljava/io/File;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 326
    const/4 v6, 0x0

    .line 328
    .restart local v6       #drawable:Landroid/graphics/drawable/Drawable;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v6

    .line 332
    :goto_6
    new-instance v9, Ljava/lang/ref/SoftReference;

    invoke-direct {v9, v6}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 333
    .restart local v9       #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v9}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/drawable/Drawable;

    iput-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_5

    .line 329
    .end local v9           #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catch_2
    move-exception v7

    .line 330
    .restart local v7       #e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v7}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_6

    .line 345
    .end local v5           #displaySave:Z
    .end local v6           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v7           #e:Ljava/lang/OutOfMemoryError;
    :cond_b
    iget-object v12, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget-object v15, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    iget-object v0, v10, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-static {v12, v15, v0}, Lcom/ub/main/net/ImageLoadingTask;->cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1
.end method

.method protected onCancelled()V
    .locals 6

    .prologue
    .line 356
    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    .line 357
    iget-object v1, p0, Lcom/ub/main/net/ImageLoadingTask;->mTaskInfo:[Lcom/ub/main/net/ImageLoadingTaskInfo;

    if-eqz v1, :cond_0

    .line 358
    iget-object v2, p0, Lcom/ub/main/net/ImageLoadingTask;->mTaskInfo:[Lcom/ub/main/net/ImageLoadingTaskInfo;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v3, :cond_1

    .line 363
    :cond_0
    return-void

    .line 358
    :cond_1
    aget-object v0, v2, v1

    .line 359
    .local v0, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    iget-object v4, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget-object v5, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4, v5}, Lcom/ub/main/net/ImageLoadingTask;->recycleImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 360
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    iget v5, p0, Lcom/ub/main/net/ImageLoadingTask;->taskCode:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter

    .prologue
    .line 1
    check-cast p1, [Lcom/ub/main/net/ImageLoadingTaskInfo;

    invoke-virtual {p0, p1}, Lcom/ub/main/net/ImageLoadingTask;->onPostExecute([Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    return-void
.end method

.method protected onPostExecute([Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 9
    .parameter "result"

    .prologue
    const/4 v6, 0x0

    .line 208
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 209
    const/4 v0, 0x0

    .line 210
    .local v0, obj:Lcom/ub/main/net/ImageLoadingTask;
    if-nez p1, :cond_0

    .line 257
    :goto_0
    return-void

    .line 214
    :cond_0
    array-length v7, p1

    move v5, v6

    :goto_1
    if-lt v5, v7, :cond_1

    .line 253
    sget-object v5, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    monitor-enter v5

    .line 254
    :try_start_0
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    iget v6, p0, Lcom/ub/main/net/ImageLoadingTask;->taskCode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    sget v4, Lcom/ub/main/net/ImageLoadingTask;->count:I

    add-int/lit8 v4, v4, -0x1

    sput v4, Lcom/ub/main/net/ImageLoadingTask;->count:I

    .line 253
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 214
    :cond_1
    aget-object v2, p1, v5

    .line 215
    .local v2, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    if-nez v2, :cond_3

    .line 214
    :cond_2
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_1

    .line 218
    :cond_3
    iget-object v4, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 219
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_2

    sget-boolean v4, Lcom/ub/main/net/ImageLoadingTask;->mEnabled:Z

    if-eqz v4, :cond_2

    .line 221
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask;->mList:Ljava/util/Hashtable;

    iget v8, p0, Lcom/ub/main/net/ImageLoadingTask;->taskCode:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #obj:Lcom/ub/main/net/ImageLoadingTask;
    check-cast v0, Lcom/ub/main/net/ImageLoadingTask;

    .line 228
    .restart local v0       #obj:Lcom/ub/main/net/ImageLoadingTask;
    if-eqz v0, :cond_2

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 231
    iget-object v4, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_4

    .line 232
    iget-object v4, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget v8, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    invoke-static {v4, v8}, Lcom/ub/main/net/ImageLoadingTask;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 234
    :cond_4
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType()[I

    move-result-object v4

    iget-object v8, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-virtual {v8}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ordinal()I

    move-result v8

    aget v4, v4, v8

    packed-switch v4, :pswitch_data_0

    .line 249
    :cond_5
    :goto_3
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 236
    :pswitch_0
    iget-object v4, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    :pswitch_1
    move-object v4, v3

    .line 239
    check-cast v4, Landroid/widget/ImageView;

    iget-object v8, v2, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 242
    :pswitch_2
    invoke-virtual {v2}, Lcom/ub/main/net/ImageLoadingTaskInfo;->getObserver()Lcom/ub/main/net/ImageLoadingObserver;

    move-result-object v1

    .line 243
    .local v1, observer:Lcom/ub/main/net/ImageLoadingObserver;
    if-eqz v1, :cond_5

    .line 244
    invoke-interface {v1, v2}, Lcom/ub/main/net/ImageLoadingObserver;->ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    goto :goto_3

    .line 234
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
