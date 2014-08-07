.class public Lcom/ub/main/net/ImageLoadingTask2;
.super Ljava/lang/Thread;
.source "ImageLoadingTask2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;,
        Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;
    }
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "ImageLoadingTask"

.field public static MAX_TASK_COUNT:I

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
            "Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;",
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
            "Lcom/ub/main/net/ImageLoadingTask2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isRunning:Z

.field private mTaskInfoList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private taskCode:I


# direct methods
.method static synthetic $SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType()[I
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcom/ub/main/net/ImageLoadingTask2;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I

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
    sput-object v0, Lcom/ub/main/net/ImageLoadingTask2;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I

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
    .line 58
    const/4 v0, 0x1

    sput-boolean v0, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    .line 61
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    .line 62
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    .line 65
    const/4 v0, 0x0

    sput v0, Lcom/ub/main/net/ImageLoadingTask2;->count:I

    .line 67
    const/16 v0, 0xa

    sput v0, Lcom/ub/main/net/ImageLoadingTask2;->MAX_TASK_COUNT:I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/util/LinkedList;I)V
    .locals 1
    .parameter
    .parameter "taskCode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTaskInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, taskList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    .line 73
    sget v0, Lcom/ub/main/net/ImageLoadingTask2;->count:I

    iput v0, p0, Lcom/ub/main/net/ImageLoadingTask2;->taskCode:I

    .line 77
    sget v0, Lcom/ub/main/net/ImageLoadingTask2;->count:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/ub/main/net/ImageLoadingTask2;->count:I

    .line 78
    iput p2, p0, Lcom/ub/main/net/ImageLoadingTask2;->taskCode:I

    .line 79
    invoke-static {p2, p0}, Lcom/ub/main/net/ImageLoadingTask2;->putViewMap(ILcom/ub/main/net/ImageLoadingTask2;)V

    .line 80
    iput-object p1, p0, Lcom/ub/main/net/ImageLoadingTask2;->mTaskInfoList:Ljava/util/LinkedList;

    .line 81
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    .line 82
    return-void
.end method

.method public static cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "context"
    .parameter "key"
    .parameter "drawable"

    .prologue
    .line 306
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 307
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    if-nez v0, :cond_0

    .line 308
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 309
    .restart local v0       #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    :cond_0
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 312
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    sget v5, Lcom/ub/main/util/UIConfig;->IMAGE_CACHE_COUNT:I

    if-le v3, v5, :cond_1

    .line 313
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    .line 314
    .local v1, obj:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    iget-object v3, v1, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v3}, Lcom/ub/main/net/ImageLoadingTask2;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 315
    const-string v3, "cache"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "cache count = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    .end local v1           #obj:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_1
    new-instance v2, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    invoke-direct {v2}, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;-><init>()V

    .line 319
    .local v2, object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    iput-object p2, v2, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 320
    iput-object p1, v2, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->url:Ljava/lang/String;

    .line 321
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 311
    monitor-exit v4

    .line 324
    return-void

    .line 311
    .end local v2           #object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
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
    .line 548
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    monitor-enter v3

    .line 549
    :try_start_0
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 550
    .local v1, taskEnum:Ljava/util/Enumeration;,"Ljava/util/Enumeration<Lcom/ub/main/net/ImageLoadingTask2;>;"
    if-nez v1, :cond_1

    .line 551
    monitor-exit v3

    .line 562
    :goto_0
    return-void

    .line 554
    :cond_0
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/net/ImageLoadingTask2;

    .line 555
    .local v0, task:Lcom/ub/main/net/ImageLoadingTask2;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 556
    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    .line 553
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTask2;
    :cond_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_0

    .line 560
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    .line 548
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
    .line 368
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 369
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    if-eqz v0, :cond_0

    .line 370
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 371
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 376
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 370
    monitor-exit v3

    .line 379
    :cond_0
    return-void

    .line 371
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    .line 372
    .local v1, item:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    iget-object v4, v1, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v4}, Lcom/ub/main/net/ImageLoadingTask2;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 373
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 374
    const/4 v4, 0x0

    iput-object v4, v1, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->url:Ljava/lang/String;

    goto :goto_0

    .line 370
    .end local v1           #item:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static clearViewMap(I)V
    .locals 4
    .parameter "taskCode"

    .prologue
    .line 519
    sget-object v2, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    monitor-enter v2

    .line 520
    :try_start_0
    sget-object v1, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ub/main/net/ImageLoadingTask2;

    .line 521
    .local v0, task:Lcom/ub/main/net/ImageLoadingTask2;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->isRunning()Z

    move-result v1

    if-nez v1, :cond_0

    .line 522
    invoke-virtual {v0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    .line 519
    :cond_0
    monitor-exit v2

    .line 526
    return-void

    .line 519
    .end local v0           #task:Lcom/ub/main/net/ImageLoadingTask2;
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
    .line 385
    sget-boolean v0, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    return v0
.end method

.method public static getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .locals 5
    .parameter "context"
    .parameter "key"

    .prologue
    .line 275
    sget-object v3, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 276
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    if-eqz v0, :cond_0

    .line 277
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    monitor-enter v4

    .line 278
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, i:I
    :goto_0
    if-gez v1, :cond_1

    .line 277
    :goto_1
    monitor-exit v4

    .line 296
    .end local v1           #i:I
    :cond_0
    const/4 v2, 0x0

    :goto_2
    return-object v2

    .line 279
    .restart local v1       #i:I
    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    .line 280
    .local v2, object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-nez v2, :cond_2

    .line 281
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 277
    .end local v1           #i:I
    .end local v2           #object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 283
    .restart local v1       #i:I
    .restart local v2       #object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_2
    :try_start_1
    iget-object v3, v2, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->url:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 285
    iget-object v3, v2, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 289
    :cond_3
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 290
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 291
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 278
    :cond_4
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method public static getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "res_id"

    .prologue
    .line 424
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v2

    .line 426
    .local v2, item:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v2, :cond_0

    .line 427
    iget-object v1, v2, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 432
    :goto_0
    return-object v1

    .line 429
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 430
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 431
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/ub/main/net/ImageLoadingTask2;->cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method public static putViewMap(ILcom/ub/main/net/ImageLoadingTask2;)V
    .locals 3
    .parameter "viewCode"
    .parameter "task"

    .prologue
    .line 508
    sget-object v1, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    monitor-enter v1

    .line 510
    :try_start_0
    sget-object v0, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 508
    monitor-exit v1

    .line 512
    return-void

    .line 508
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

    .line 442
    const/4 v0, 0x0

    .line 444
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 445
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 450
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 451
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    .line 453
    invoke-static {p0, v0}, Lcom/ub/main/net/ImageLoadingTask2;->recycleImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 454
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 455
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 459
    :cond_1
    :goto_1
    const/4 v1, 0x1

    .line 462
    :goto_2
    return v1

    .line 446
    .restart local p1
    :cond_2
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 447
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 456
    :cond_3
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 457
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 462
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
    .line 470
    if-eqz p1, :cond_0

    .line 471
    sget-object v4, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 472
    .local v1, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    if-eqz v1, :cond_0

    .line 473
    sget-object v5, Lcom/ub/main/net/ImageLoadingTask2;->mImageCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 474
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 473
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 484
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 485
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 488
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    .end local v2           #i:I
    :cond_0
    return-void

    .line 475
    .restart local v1       #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;>;"
    .restart local v2       #i:I
    .restart local p1
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    .line 476
    .local v3, object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    iget-object v4, v3, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 478
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 473
    .end local v2           #i:I
    .end local v3           #object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 474
    .restart local v2       #i:I
    .restart local v3       #object:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static recycleImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 495
    if-eqz p0, :cond_0

    .line 496
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 497
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 498
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 501
    :cond_0
    return-void
.end method

.method private removeSelf()V
    .locals 3

    .prologue
    .line 539
    sget-object v1, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    monitor-enter v1

    .line 540
    :try_start_0
    sget-object v0, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    iget v2, p0, Lcom/ub/main/net/ImageLoadingTask2;->taskCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 541
    sget v0, Lcom/ub/main/net/ImageLoadingTask2;->count:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/ub/main/net/ImageLoadingTask2;->count:I

    .line 539
    monitor-exit v1

    .line 543
    return-void

    .line 539
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setEnabled(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 393
    sget-boolean v0, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-eq v0, p0, :cond_0

    .line 394
    sput-boolean p0, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    .line 414
    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .prologue
    .line 529
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    .line 530
    invoke-direct {p0}, Lcom/ub/main/net/ImageLoadingTask2;->removeSelf()V

    .line 531
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    return v0
.end method

.method public run()V
    .locals 18

    .prologue
    .line 87
    const-string v1, "ImageLoadingTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "running start, I am "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v4, Lcom/ub/main/net/ImageLoadingTask2;->count:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-nez v1, :cond_1

    .line 266
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    .line 267
    :goto_1
    return-void

    .line 91
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->mTaskInfoList:Ljava/util/LinkedList;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->mTaskInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 92
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    goto :goto_1

    .line 97
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->mTaskInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 99
    .local v17, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    if-eqz v17, :cond_0

    .line 102
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 103
    .local v3, view:Landroid/view/View;
    if-eqz v3, :cond_0

    .line 108
    :try_start_0
    const-string v1, "ImageLoadingTask"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "mList Size:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    invoke-virtual {v4}, Ljava/util/Hashtable;->size()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v9, 0x0

    .line 110
    .local v9, count:I
    :cond_4
    :goto_2
    sget-object v1, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/16 v2, 0x14

    if-gt v1, v2, :cond_6

    .line 127
    .end local v9           #count:I
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-eqz v1, :cond_5

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-nez v1, :cond_9

    .line 128
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    goto :goto_1

    .line 112
    .restart local v9       #count:I
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-eqz v1, :cond_7

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-nez v1, :cond_8

    .line 113
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 123
    .end local v9           #count:I
    :catch_0
    move-exception v12

    .line 124
    .local v12, e:Ljava/lang/InterruptedException;
    invoke-virtual {v12}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 117
    .end local v12           #e:Ljava/lang/InterruptedException;
    .restart local v9       #count:I
    :cond_8
    const-wide/16 v1, 0xbb8

    :try_start_2
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 118
    add-int/lit8 v9, v9, 0x1

    .line 119
    const/4 v1, 0x4

    if-le v9, v1, :cond_4

    .line 120
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->clearAllTask()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 132
    .end local v9           #count:I
    :cond_9
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    if-eqz v1, :cond_1d

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1d

    .line 134
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/ub/main/net/ImageLoadingTaskInfo;->isGrayBitmap()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v8

    .line 137
    .local v8, cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    if-eqz v8, :cond_d

    .line 138
    iget-object v1, v8, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 207
    :cond_a
    :goto_4
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_b

    .line 208
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/ub/main/net/ImageLoadingTaskInfo;->isGrayBitmap()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;

    move-result-object v8

    .line 209
    if-eqz v8, :cond_19

    .line 214
    iget-object v1, v8, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v1, v2, :cond_b

    .line 215
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1}, Lcom/ub/main/net/ImageLoadingTask2;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 216
    iget-object v1, v8, Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 231
    :cond_b
    :goto_5
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-nez v1, :cond_1b

    .line 232
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    goto/16 :goto_1

    .line 141
    :cond_d
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-eqz v1, :cond_e

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-nez v1, :cond_f

    .line 142
    :cond_e
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    goto/16 :goto_1

    .line 146
    :cond_f
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/ub/main/util/Tool;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v13

    .line 149
    .local v13, image_file:Ljava/io/File;
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    .line 150
    const/4 v11, 0x0

    .line 152
    .local v11, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_3
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v11

    .line 156
    :goto_6
    new-instance v16, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 157
    .local v16, softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 158
    const/4 v11, 0x0

    goto/16 :goto_4

    .line 153
    .end local v16           #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catch_1
    move-exception v12

    .line 154
    .local v12, e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_6

    .line 161
    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    :cond_10
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-eqz v1, :cond_11

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-nez v1, :cond_12

    .line 162
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    goto/16 :goto_1

    .line 166
    :cond_12
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    invoke-static {v1}, Lcom/ub/main/util/Tool;->haveInternet(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 167
    const/4 v1, 0x0

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 171
    :cond_13
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    .line 173
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-eqz v1, :cond_14

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-nez v1, :cond_15

    .line 174
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    goto/16 :goto_1

    .line 178
    :cond_15
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/ub/main/net/HttpStack;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 179
    .local v7, bmp:Landroid/graphics/Bitmap;
    if-eqz v7, :cond_a

    .line 180
    new-instance v16, Ljava/lang/ref/SoftReference;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v16

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 181
    .restart local v16       #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 182
    const/4 v7, 0x0

    goto/16 :goto_4

    .line 186
    .end local v7           #bmp:Landroid/graphics/Bitmap;
    .end local v16           #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->isRunning:Z

    if-eqz v1, :cond_17

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-nez v1, :cond_18

    .line 187
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/ub/main/net/ImageLoadingTask2;->cancel()V

    goto/16 :goto_1

    .line 191
    :cond_18
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v1, v13}, Lcom/ub/main/net/HttpStack;->writeImageInSDCard(Ljava/lang/String;Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 192
    const/4 v11, 0x0

    .line 194
    .restart local v11       #drawable:Landroid/graphics/drawable/Drawable;
    :try_start_4
    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v11

    .line 198
    :goto_7
    new-instance v16, Ljava/lang/ref/SoftReference;

    move-object/from16 v0, v16

    invoke-direct {v0, v11}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 199
    .restart local v16       #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto/16 :goto_4

    .line 195
    .end local v16           #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catch_2
    move-exception v12

    .line 196
    .restart local v12       #e:Ljava/lang/OutOfMemoryError;
    invoke-virtual {v12}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_7

    .line 220
    .end local v11           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v12           #e:Ljava/lang/OutOfMemoryError;
    .end local v13           #image_file:Ljava/io/File;
    :cond_19
    invoke-virtual/range {v17 .. v17}, Lcom/ub/main/net/ImageLoadingTaskInfo;->isGrayBitmap()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 221
    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v10, Landroid/graphics/drawable/BitmapDrawable;

    .line 222
    .local v10, d:Landroid/graphics/drawable/BitmapDrawable;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v2}, Lcom/ub/main/util/Tool;->toGrayscale(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 223
    invoke-static {v10}, Lcom/ub/main/net/ImageLoadingTask2;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 225
    .end local v10           #d:Landroid/graphics/drawable/BitmapDrawable;
    :cond_1a
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    new-instance v2, Ljava/lang/StringBuilder;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lcom/ub/main/net/ImageLoadingTaskInfo;->isGrayBitmap()Z

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v1, v2, v4}, Lcom/ub/main/net/ImageLoadingTask2;->cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    .line 238
    :cond_1b
    if-eqz v3, :cond_1d

    sget-boolean v1, Lcom/ub/main/net/ImageLoadingTask2;->mEnabled:Z

    if-eqz v1, :cond_1d

    .line 239
    sget-object v1, Lcom/ub/main/net/ImageLoadingTask2;->mList:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/ub/main/net/ImageLoadingTask2;->taskCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/ub/main/net/ImageLoadingTask2;

    .line 241
    .local v14, obj:Lcom/ub/main/net/ImageLoadingTask2;
    if-eqz v14, :cond_1d

    move-object/from16 v0, p0

    invoke-virtual {v14, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1d

    .line 242
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_1c

    .line 243
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    move-object/from16 v0, v17

    iget v2, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoadingTask2;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object/from16 v0, v17

    iput-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 245
    :cond_1c
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType()[I

    move-result-object v1

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-virtual {v2}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 254
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mLoadingView:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_1e

    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mLoadingView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 255
    new-instance v1, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mLoadingView:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    move-object/from16 v0, v17

    iget-object v5, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object/from16 v0, v17

    iget-object v6, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;-><init>(Lcom/ub/main/net/ImageLoadingTask2;Landroid/view/View;Landroid/view/View;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 264
    .end local v8           #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .end local v14           #obj:Lcom/ub/main/net/ImageLoadingTask2;
    :cond_1d
    :goto_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/ub/main/net/ImageLoadingTask2;->mTaskInfoList:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    goto/16 :goto_0

    .line 247
    .restart local v8       #cacheItem:Lcom/ub/main/net/ImageLoadingTask2$MyDrawable;
    .restart local v14       #obj:Lcom/ub/main/net/ImageLoadingTask2;
    :pswitch_0
    invoke-virtual/range {v17 .. v17}, Lcom/ub/main/net/ImageLoadingTaskInfo;->getObserver()Lcom/ub/main/net/ImageLoadingObserver;

    move-result-object v15

    .line 248
    .local v15, observer:Lcom/ub/main/net/ImageLoadingObserver;
    if-eqz v15, :cond_1d

    .line 249
    move-object/from16 v0, v17

    invoke-interface {v15, v0}, Lcom/ub/main/net/ImageLoadingObserver;->ImageLoaded(Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    goto :goto_8

    .line 257
    .end local v15           #observer:Lcom/ub/main/net/ImageLoadingObserver;
    :cond_1e
    new-instance v1, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;

    move-object/from16 v0, v17

    iget-object v2, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    move-object/from16 v0, v17

    iget-object v4, v0, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p0

    invoke-direct {v1, v0, v3, v2, v4}, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;-><init>(Lcom/ub/main/net/ImageLoadingTask2;Landroid/view/View;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v3, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_8

    .line 245
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
