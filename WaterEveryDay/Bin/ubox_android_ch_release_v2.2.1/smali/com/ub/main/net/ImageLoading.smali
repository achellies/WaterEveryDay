.class public Lcom/ub/main/net/ImageLoading;
.super Ljava/lang/Thread;
.source "ImageLoading.java"


# static fields
.field private static final IMAGE_CACHE_COUNT:I = 0x32

.field private static final LOG_TAG:Ljava/lang/String; = "ImageLoading"

.field private static mImageCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field _taskInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTaskInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isCancel:Ljava/lang/Boolean;

.field m_observer:Landroid/os/Handler;

.field private resultId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/os/Handler;I)V
    .locals 1
    .parameter
    .parameter "observer"
    .parameter "resID"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ub/main/net/ImageLoadingTaskInfo;",
            ">;",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 53
    .local p1, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/ub/main/net/ImageLoadingTaskInfo;>;"
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    .line 55
    iput-object p2, p0, Lcom/ub/main/net/ImageLoading;->m_observer:Landroid/os/Handler;

    .line 56
    iput p3, p0, Lcom/ub/main/net/ImageLoading;->resultId:I

    .line 57
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/net/ImageLoading;->isCancel:Ljava/lang/Boolean;

    .line 58
    return-void
.end method

.method public static cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "context"
    .parameter "key"
    .parameter "drawable"

    .prologue
    .line 194
    sget-object v4, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 195
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    if-nez v0, :cond_0

    .line 196
    new-instance v0, Ljava/util/LinkedList;

    .end local v0           #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 197
    .restart local v0       #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    sget-object v4, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v5, 0x32

    if-le v4, v5, :cond_2

    .line 200
    sget-object v5, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 201
    const/4 v1, 0x0

    .local v1, i:I
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v3

    .local v3, size:I
    :goto_0
    add-int/lit8 v4, v3, -0x32

    if-lt v1, v4, :cond_1

    .line 200
    monitor-exit v5

    .line 210
    .end local v1           #i:I
    .end local v3           #size:I
    :goto_1
    return-void

    .line 202
    .restart local v1       #i:I
    .restart local v3       #size:I
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;

    .line 203
    .local v2, obj:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v1, p2}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 204
    invoke-static {v2}, Lcom/ub/main/net/ImageLoading;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 201
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v2           #obj:Landroid/graphics/drawable/Drawable;
    .end local v3           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 208
    .end local v1           #i:I
    :cond_2
    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static clearCacheImage(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 217
    sget-object v2, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/LinkedList;

    .line 218
    .local v0, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v0, :cond_0

    .line 219
    sget-object v3, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    monitor-enter v3

    .line 220
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1

    .line 223
    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 219
    monitor-exit v3

    .line 226
    :cond_0
    return-void

    .line 220
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 221
    .local v1, item:Landroid/graphics/drawable/Drawable;
    invoke-static {v1}, Lcom/ub/main/net/ImageLoading;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 219
    .end local v1           #item:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static getImageCache(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .parameter "context"
    .parameter "key"

    .prologue
    .line 164
    sget-object v4, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 165
    .local v1, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_0

    .line 166
    sget-object v5, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 167
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 166
    :goto_1
    monitor-exit v5

    .line 184
    .end local v2           #i:I
    :cond_0
    const/4 v3, 0x0

    :goto_2
    return-object v3

    .line 168
    .restart local v2       #i:I
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 169
    .local v3, object:Landroid/graphics/drawable/Drawable;
    if-nez v3, :cond_2

    .line 170
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 166
    .end local v2           #i:I
    .end local v3           #object:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 172
    .restart local v2       #i:I
    .restart local v3       #object:Landroid/graphics/drawable/Drawable;
    :cond_2
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 173
    move-object v0, v3

    check-cast v0, Landroid/graphics/drawable/BitmapDrawable;

    move-object v4, v0

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 177
    :cond_3
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 178
    invoke-virtual {v1, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 179
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 167
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method public static getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .parameter "context"
    .parameter "res_id"

    .prologue
    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/ub/main/net/ImageLoading;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 236
    .local v2, item:Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 242
    .end local v2           #item:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v2

    .line 239
    .restart local v2       #item:Landroid/graphics/drawable/Drawable;
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 240
    .local v0, bitmap:Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 241
    .local v1, drawable:Landroid/graphics/drawable/Drawable;
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v1}, Lcom/ub/main/net/ImageLoading;->cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    move-object v2, v1

    .line 242
    goto :goto_0
.end method

.method private notifyUI(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 3
    .parameter "task"

    .prologue
    .line 312
    iget-object v1, p0, Lcom/ub/main/net/ImageLoading;->isCancel:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 326
    :cond_0
    :goto_0
    return-void

    .line 315
    :cond_1
    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_2

    .line 316
    iget-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget v2, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->defaultDrawableId:I

    invoke-static {v1, v2}, Lcom/ub/main/net/ImageLoading;->getResourceImage(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p1, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    :cond_2
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 320
    .local v0, msg:Landroid/os/Message;
    iget v1, p0, Lcom/ub/main/net/ImageLoading;->resultId:I

    iput v1, v0, Landroid/os/Message;->what:I

    .line 321
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 322
    iget-object v1, p0, Lcom/ub/main/net/ImageLoading;->m_observer:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 324
    iget-object v1, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 325
    iget-object v1, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static recycleBitmapOfThView(Landroid/content/Context;Landroid/view/View;)Z
    .locals 3
    .parameter "context"
    .parameter "view"

    .prologue
    const/4 v2, 0x0

    .line 252
    const/4 v0, 0x0

    .line 254
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    move-object v1, p1

    .line 255
    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 260
    :cond_0
    :goto_0
    if-eqz v0, :cond_4

    .line 261
    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_4

    .line 262
    instance-of v1, p1, Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    .line 263
    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 267
    :cond_1
    :goto_1
    invoke-static {p0, v0}, Lcom/ub/main/net/ImageLoading;->recycleImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 268
    const/4 v1, 0x1

    .line 271
    :goto_2
    return v1

    .line 256
    .restart local p1
    :cond_2
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 257
    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 264
    :cond_3
    instance-of v1, p1, Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 265
    check-cast p1, Landroid/widget/TextView;

    .end local p1
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 271
    .restart local p1
    :cond_4
    const/4 v1, 0x0

    goto :goto_2
.end method

.method private static recycleImage(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .parameter "context"
    .parameter "image"

    .prologue
    .line 279
    if-eqz p1, :cond_0

    .line 280
    sget-object v4, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/LinkedList;

    .line 281
    .local v1, cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    if-eqz v1, :cond_0

    .line 282
    sget-object v5, Lcom/ub/main/net/ImageLoading;->mImageCache:Ljava/util/HashMap;

    monitor-enter v5

    .line 283
    :try_start_0
    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-gez v2, :cond_1

    .line 282
    :goto_1
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 291
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .end local p1
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 292
    .local v0, bitmap:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 295
    .end local v0           #bitmap:Landroid/graphics/Bitmap;
    .end local v1           #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    .end local v2           #i:I
    :cond_0
    return-void

    .line 284
    .restart local v1       #cache:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Landroid/graphics/drawable/Drawable;>;"
    .restart local v2       #i:I
    .restart local p1
    :cond_1
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 285
    .local v3, object:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 286
    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 282
    .end local v2           #i:I
    .end local v3           #object:Landroid/graphics/drawable/Drawable;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 283
    .restart local v2       #i:I
    .restart local v3       #object:Landroid/graphics/drawable/Drawable;
    :cond_2
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method

.method private static recycleImage(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .parameter "image"

    .prologue
    .line 302
    if-eqz p0, :cond_0

    .line 303
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 304
    .local v0, bitmap:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 305
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 308
    :cond_0
    return-void
.end method


# virtual methods
.method public addTask(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    .locals 1
    .parameter "task"

    .prologue
    .line 61
    iget-object v0, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    .line 64
    :cond_0
    iget-object v0, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    return-void
.end method

.method public cancelLoading()V
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/ub/main/net/ImageLoading;->isCancel:Ljava/lang/Boolean;

    .line 69
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    .line 72
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/ub/main/net/ImageLoading;->isCancel:Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 154
    :cond_1
    return-void

    .line 73
    :cond_2
    iget-object v8, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    const-string v8, "ImageLoading"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v10

    invoke-static {v10}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "is running"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    :try_start_0
    iget-object v8, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/ub/main/net/ImageLoadingTaskInfo;

    .line 80
    .local v7, task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    if-eqz v7, :cond_3

    iget-object v8, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 81
    iget-object v8, p0, Lcom/ub/main/net/ImageLoading;->_taskInfos:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 82
    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iput-object v8, p0, Lcom/ub/main/net/ImageLoading;->isCancel:Ljava/lang/Boolean;

    .line 86
    :cond_3
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    if-eqz v8, :cond_0

    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    .line 87
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/ub/main/util/Tool;->getImageFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    .line 88
    .local v5, image_file:Ljava/io/File;
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget-object v9, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/ub/main/net/ImageLoading;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 89
    .local v1, cacheItem:Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_4

    .line 90
    iput-object v1, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 91
    invoke-direct {p0, v7}, Lcom/ub/main/net/ImageLoading;->notifyUI(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    .end local v1           #cacheItem:Landroid/graphics/drawable/Drawable;
    .end local v5           #image_file:Ljava/io/File;
    .end local v7           #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    :catch_0
    move-exception v4

    .line 151
    .local v4, e:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 95
    .end local v4           #e:Ljava/lang/Throwable;
    .restart local v1       #cacheItem:Landroid/graphics/drawable/Drawable;
    .restart local v5       #image_file:Ljava/io/File;
    .restart local v7       #task:Lcom/ub/main/net/ImageLoadingTaskInfo;
    :cond_4
    :try_start_1
    invoke-virtual {v5}, Ljava/io/File;->exists()Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v8

    if-eqz v8, :cond_6

    .line 96
    const/4 v3, 0x0

    .line 98
    .local v3, drawable:Landroid/graphics/drawable/Drawable;
    :try_start_2
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v3

    .line 102
    :goto_1
    :try_start_3
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 103
    .local v6, softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    iput-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 104
    const/4 v3, 0x0

    .line 135
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v6           #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :cond_5
    :goto_2
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v8, :cond_a

    .line 137
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget-object v9, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/ub/main/net/ImageLoading;->getImageCache(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 138
    if-eqz v1, :cond_9

    .line 139
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v8}, Lcom/ub/main/net/ImageLoading;->recycleImage(Landroid/graphics/drawable/Drawable;)V

    .line 140
    iput-object v1, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 144
    :goto_3
    invoke-direct {p0, v7}, Lcom/ub/main/net/ImageLoading;->notifyUI(Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    goto/16 :goto_0

    .line 99
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    :catch_1
    move-exception v4

    .line 100
    .restart local v4       #e:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 107
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #e:Ljava/lang/Throwable;
    :cond_6
    const/4 v2, 0x1

    .line 108
    .local v2, displaySave:Z
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    invoke-static {v8}, Lcom/ub/main/util/Tool;->haveInternet(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 109
    const/4 v8, 0x0

    iput-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 110
    invoke-direct {p0, v7}, Lcom/ub/main/net/ImageLoading;->notifyUI(Lcom/ub/main/net/ImageLoadingTaskInfo;)V

    goto/16 :goto_0

    .line 113
    :cond_7
    if-eqz v2, :cond_5

    .line 114
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mounted"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_8

    .line 115
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v8}, Lcom/ub/main/net/HttpStack;->returnBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 116
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_5

    .line 117
    new-instance v8, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v8, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 121
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :cond_8
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    invoke-static {v8, v5}, Lcom/ub/main/net/HttpStack;->writeImageInSDCard(Ljava/lang/String;Ljava/io/File;)Z
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    move-result v8

    if-eqz v8, :cond_5

    .line 122
    const/4 v3, 0x0

    .line 124
    .restart local v3       #drawable:Landroid/graphics/drawable/Drawable;
    :try_start_4
    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/graphics/drawable/Drawable;->createFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    move-result-object v3

    .line 128
    :goto_4
    :try_start_5
    new-instance v6, Ljava/lang/ref/SoftReference;

    invoke-direct {v6, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    .line 129
    .restart local v6       #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    invoke-virtual {v6}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Drawable;

    iput-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_2

    .line 125
    .end local v6           #softRef:Ljava/lang/ref/SoftReference;,"Ljava/lang/ref/SoftReference<Landroid/graphics/drawable/Drawable;>;"
    :catch_2
    move-exception v4

    .line 126
    .restart local v4       #e:Ljava/lang/Throwable;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 142
    .end local v2           #displaySave:Z
    .end local v3           #drawable:Landroid/graphics/drawable/Drawable;
    .end local v4           #e:Ljava/lang/Throwable;
    :cond_9
    iget-object v8, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mContext:Landroid/app/Activity;

    iget-object v9, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mUrl:Ljava/lang/String;

    iget-object v10, v7, Lcom/ub/main/net/ImageLoadingTaskInfo;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {v8, v9, v10}, Lcom/ub/main/net/ImageLoading;->cacheImage(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    goto :goto_3

    .line 146
    :cond_a
    invoke-direct {p0, v7}, Lcom/ub/main/net/ImageLoading;->notifyUI(Lcom/ub/main/net/ImageLoadingTaskInfo;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0
.end method
