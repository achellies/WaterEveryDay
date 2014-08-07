.class public final enum Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;
.super Ljava/lang/Enum;
.source "ImageLoadingTaskInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ub/main/net/ImageLoadingTaskInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TaskType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

.field public static final enum background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

.field public static final enum image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

.field public static final enum observer_mode:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    const-string v1, "background"

    invoke-direct {v0, v1, v2}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 54
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    const-string v1, "image"

    invoke-direct {v0, v1, v3}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 55
    new-instance v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    const-string v1, "observer_mode"

    invoke-direct {v0, v1, v4}, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->observer_mode:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    .line 52
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    sget-object v1, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->background:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->image:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->observer_mode:Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ENUM$VALUES:[Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;
    .locals 1
    .parameter

    .prologue
    .line 1
    const-class v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    return-object v0
.end method

.method public static values()[Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;->ENUM$VALUES:[Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    array-length v1, v0

    new-array v2, v1, [Lcom/ub/main/net/ImageLoadingTaskInfo$TaskType;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
