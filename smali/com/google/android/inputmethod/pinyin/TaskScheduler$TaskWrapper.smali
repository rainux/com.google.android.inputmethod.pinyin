.class Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
.super Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;
.source "TaskScheduler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/TaskScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TaskWrapper"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field public final mId:Ljava/lang/String;

.field private mInterval:J

.field public mState:I

.field private mTask:Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/TaskScheduler;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/TaskScheduler;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;)V
    .registers 8
    .parameter
    .parameter "id"
    .parameter "handler"
    .parameter "task"

    .prologue
    const/4 v2, 0x0

    .line 150
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->this$0:Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;-><init>()V

    .line 143
    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mTask:Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;

    .line 144
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mInterval:J

    .line 145
    iput-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mHandler:Landroid/os/Handler;

    .line 147
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    .line 151
    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mId:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mTask:Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;

    .line 153
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mHandler:Landroid/os/Handler;

    .line 154
    return-void
.end method

.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/TaskScheduler;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)V
    .registers 7
    .parameter
    .parameter "id"
    .parameter "handler"
    .parameter "task"
    .parameter "interval"

    .prologue
    .line 157
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;-><init>(Lcom/google/android/inputmethod/pinyin/TaskScheduler;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;)V

    .line 158
    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mHandler:Landroid/os/Handler;

    .line 159
    return-void
.end method


# virtual methods
.method public cancel()Z
    .registers 3

    .prologue
    const/4 v1, 0x1

    .line 180
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mTask:Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;->cancel()Z

    move-result v0

    if-ne v1, v0, :cond_e

    .line 181
    const/4 v0, 0x4

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    move v0, v1

    .line 184
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public run()V
    .registers 5

    .prologue
    .line 162
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    .line 168
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mTask:Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;->setRunningId(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mTask:Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;->run()V

    .line 170
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mTask:Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;->setRunningId(Ljava/lang/String;)V

    .line 171
    iget-wide v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mInterval:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_28

    .line 172
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mHandler:Landroid/os/Handler;

    iget-wide v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mInterval:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 173
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    .line 177
    :goto_27
    return-void

    .line 175
    :cond_28
    const/4 v0, 0x3

    iput v0, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    goto :goto_27
.end method
