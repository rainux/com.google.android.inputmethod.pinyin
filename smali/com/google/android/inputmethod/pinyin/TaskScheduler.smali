.class public Lcom/google/android/inputmethod/pinyin/TaskScheduler;
.super Ljava/lang/Object;
.source "TaskScheduler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;,
        Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TaskScheduler"


# instance fields
.field private mTaskHandler:Landroid/os/Handler;

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTaskHandler:Landroid/os/Handler;

    .line 29
    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    .line 32
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    .line 33
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Background tasks"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 36
    .local v0, handlerThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 37
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTaskHandler:Landroid/os/Handler;

    .line 38
    return-void
.end method

.method private addTask(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)Z
    .registers 12
    .parameter "id"
    .parameter "task"
    .parameter "interval"

    .prologue
    .line 41
    new-instance v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTaskHandler:Landroid/os/Handler;

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;-><init>(Lcom/google/android/inputmethod/pinyin/TaskScheduler;Ljava/lang/String;Landroid/os/Handler;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)V

    .line 42
    .local v0, entry:Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    monitor-enter p0

    .line 43
    :try_start_c
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_c .. :try_end_12} :catchall_19

    .line 45
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result v1

    return v1

    .line 44
    :catchall_19
    move-exception v1

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v1
.end method

.method private deleteTask(Ljava/lang/String;)V
    .registers 5
    .parameter "id"

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 50
    .local v1, entry:Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    monitor-enter p0

    .line 51
    :try_start_2
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 52
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;

    move-object v1, v0

    .line 53
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_19
    monitor-exit p0
    :try_end_1a
    .catchall {:try_start_2 .. :try_end_1a} :catchall_22

    .line 56
    if-eqz v1, :cond_21

    .line 57
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTaskHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 58
    :cond_21
    return-void

    .line 55
    :catchall_22
    move-exception v2

    :try_start_23
    monitor-exit p0
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    throw v2
.end method

.method private getTask(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    .registers 5
    .parameter "id"

    .prologue
    .line 61
    const/4 v1, 0x0

    .line 62
    .local v1, entry:Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    monitor-enter p0

    .line 63
    :try_start_2
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 64
    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;

    move-object v1, v0

    .line 66
    :cond_14
    monitor-exit p0

    .line 67
    return-object v1

    .line 66
    :catchall_16
    move-exception v2

    monitor-exit p0
    :try_end_18
    .catchall {:try_start_2 .. :try_end_18} :catchall_16

    throw v2
.end method


# virtual methods
.method public cancel(Ljava/lang/String;)V
    .registers 5
    .parameter "id"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->getTask(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;

    move-result-object v0

    .line 91
    .local v0, entry:Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    if-eqz v0, :cond_e

    iget v1, v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_e

    .line 92
    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->cancel()Z

    .line 93
    :cond_e
    return-void
.end method

.method public gc()V
    .registers 9

    .prologue
    const/4 v7, 0x3

    const-string v4, "TaskScheduler"

    .line 96
    monitor-enter p0

    .line 97
    :try_start_4
    const-string v4, "TaskScheduler"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_31

    .line 98
    const-string v4, "TaskScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GC scanning "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " task(s) ..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_31
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    .line 100
    .local v3, ids:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_42
    array-length v4, v3

    if-ge v1, v4, :cond_86

    .line 101
    aget-object v2, v3, v1

    check-cast v2, Ljava/lang/String;

    .line 102
    .local v2, id:Ljava/lang/String;
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;

    .line 103
    .local v0, entry:Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    if-eqz v0, :cond_83

    iget v4, v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    if-ne v4, v7, :cond_83

    .line 104
    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    const-string v4, "TaskScheduler"

    const/4 v5, 0x3

    invoke-static {v4, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_83

    .line 106
    const-string v4, "TaskScheduler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "GC removed stopped task <"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_42

    .line 109
    .end local v0           #entry:Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    .end local v2           #id:Ljava/lang/String;
    :cond_86
    monitor-exit p0

    .line 110
    return-void

    .line 109
    .end local v1           #i:I
    .end local v3           #ids:[Ljava/lang/Object;
    :catchall_88
    move-exception v4

    monitor-exit p0
    :try_end_8a
    .catchall {:try_start_4 .. :try_end_8a} :catchall_88

    throw v4
.end method

.method public getState(Ljava/lang/String;)I
    .registers 4
    .parameter "id"

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->getTask(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;

    move-result-object v0

    .line 84
    .local v0, entry:Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;
    if-eqz v0, :cond_9

    .line 85
    iget v1, v0, Lcom/google/android/inputmethod/pinyin/TaskScheduler$TaskWrapper;->mState:I

    .line 86
    :goto_8
    return v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_8
.end method

.method public remove(Ljava/lang/String;)V
    .registers 2
    .parameter "id"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->deleteTask(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public schedule(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;)Z
    .registers 5
    .parameter "id"
    .parameter "task"

    .prologue
    .line 71
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->addTask(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)Z

    move-result v0

    return v0
.end method

.method public schedule(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)Z
    .registers 6
    .parameter "id"
    .parameter "task"
    .parameter "interval"

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->addTask(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)Z

    move-result v0

    return v0
.end method
