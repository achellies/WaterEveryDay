.class Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;
.super Ljava/lang/Object;
.source "ImageLoadingTask2.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/net/ImageLoadingTask2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UIRunnable"
.end annotation


# static fields
.field private static synthetic $SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I


# instance fields
.field private _drawable:Landroid/graphics/drawable/Drawable;

.field private _type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

.field private _view:Landroid/view/View;

.field private loadView:Landroid/view/View;

.field final synthetic this$0:Lcom/ub/main/net/ImageLoadingTask2;


# direct methods
.method static synthetic $SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType()[I
    .locals 3

    .prologue
    .line 326
    sget-object v0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I

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
    sput-object v0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType:[I

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

.method public constructor <init>(Lcom/ub/main/net/ImageLoadingTask2;Landroid/view/View;Landroid/view/View;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "loadView"
    .parameter "type"
    .parameter "drawable"

    .prologue
    .line 339
    iput-object p1, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->this$0:Lcom/ub/main/net/ImageLoadingTask2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    iput-object p2, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_view:Landroid/view/View;

    .line 341
    iput-object p4, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 342
    iput-object p5, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_drawable:Landroid/graphics/drawable/Drawable;

    .line 343
    iput-object p3, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->loadView:Landroid/view/View;

    .line 344
    return-void
.end method

.method public constructor <init>(Lcom/ub/main/net/ImageLoadingTask2;Landroid/view/View;Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .parameter
    .parameter "view"
    .parameter "type"
    .parameter "drawable"

    .prologue
    .line 333
    iput-object p1, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->this$0:Lcom/ub/main/net/ImageLoadingTask2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 334
    iput-object p2, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_view:Landroid/view/View;

    .line 335
    iput-object p3, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 336
    iput-object p4, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_drawable:Landroid/graphics/drawable/Drawable;

    .line 337
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 348
    invoke-static {}, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->$SWITCH_TABLE$com$ub$main$net$ImageLoadingTaskInfo$TaskType()[I

    move-result-object v0

    iget-object v1, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_type:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-virtual {v1}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 356
    :goto_0
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->loadView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->loadView:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_view:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 360
    return-void

    .line 350
    :pswitch_0
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_view:Landroid/view/View;

    iget-object v1, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 353
    :pswitch_1
    iget-object v0, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_view:Landroid/view/View;

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/ub/main/net/ImageLoadingTask2$UIRunnable;->_drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
