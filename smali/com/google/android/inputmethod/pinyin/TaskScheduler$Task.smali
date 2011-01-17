.class public abstract Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;
.super Ljava/lang/Object;
.source "TaskScheduler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/TaskScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Task"
.end annotation


# static fields
.field public static final CANCELING:I = 0x4

.field public static final PENDING:I = 0x1

.field public static final RUNNING:I = 0x2

.field public static final STOPPED:I = 0x3

.field public static final UNKNOWN:I


# instance fields
.field private mRunningId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract cancel()Z
.end method

.method getRunningId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;->mRunningId:Ljava/lang/String;

    return-object v0
.end method

.method public abstract run()V
.end method

.method setRunningId(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 126
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;->mRunningId:Ljava/lang/String;

    .line 127
    return-void
.end method
