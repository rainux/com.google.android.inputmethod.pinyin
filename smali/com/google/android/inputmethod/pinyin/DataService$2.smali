.class final Lcom/google/android/inputmethod/pinyin/DataService$2;
.super Lcom/google/android/inputmethod/pinyin/IDataService$Stub;
.source "DataService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/DataService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/DataService;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/DataService;)V
    .registers 2
    .parameter

    .prologue
    .line 242
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-direct {p0}, Lcom/google/android/inputmethod/pinyin/IDataService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public disableSync()V
    .registers 3

    .prologue
    .line 271
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->gc()V

    .line 272
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_SYNC_REPEATED"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->remove(Ljava/lang/String;)V

    .line 273
    return-void
.end method

.method public disableUpdate()V
    .registers 3

    .prologue
    .line 255
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->gc()V

    .line 256
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_UPDATE_REPEATED"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->remove(Ljava/lang/String;)V

    .line 257
    return-void
.end method

.method public enableSync()V
    .registers 6

    .prologue
    const-string v4, "TASK_SYNC_REPEATED"

    .line 260
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->gc()V

    .line 262
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    if-eqz v0, :cond_3f

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_SYNC_REPEATED"

    invoke-virtual {v0, v4}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->getState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_3f

    .line 264
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_SYNC_REPEATED"

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/DataService;->access$300(Lcom/google/android/inputmethod/pinyin/DataService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/DataService;->access$400(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/SyncEngine;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/SyncTask;->getInstance(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;Lcom/google/android/inputmethod/pinyin/SyncEngine;)Lcom/google/android/inputmethod/pinyin/SyncTask;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->schedule(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)Z

    .line 268
    :cond_3f
    return-void
.end method

.method public enableUpdate()V
    .registers 6

    .prologue
    const-string v4, "TASK_UPDATE_REPEATED"

    .line 244
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->gc()V

    .line 246
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    if-eqz v0, :cond_39

    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_UPDATE_REPEATED"

    invoke-virtual {v0, v4}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->getState(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_39

    .line 248
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_UPDATE_REPEATED"

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/DataService;->access$300(Lcom/google/android/inputmethod/pinyin/DataService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/inputmethod/pinyin/UpdateTask;->getInstance(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/UpdateTask;

    move-result-object v1

    const-wide/32 v2, 0x5265c00

    invoke-virtual {v0, v4, v1, v2, v3}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->schedule(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;J)Z

    .line 252
    :cond_39
    return-void
.end method

.method public isReady()Z
    .registers 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isSyncActive()Z
    .registers 6

    .prologue
    const/4 v4, 0x2

    .line 301
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v2

    const-string v3, "TASK_SYNC_REPEATED"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->getState(Ljava/lang/String;)I

    move-result v0

    .line 302
    .local v0, state1:I
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v2

    const-string v3, "TASK_SYNC_ONCE"

    invoke-virtual {v2, v3}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->getState(Ljava/lang/String;)I

    move-result v1

    .line 303
    .local v1, state2:I
    if-eq v0, v4, :cond_19

    if-ne v1, v4, :cond_1b

    :cond_19
    const/4 v2, 0x1

    :goto_1a
    return v2

    :cond_1b
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public syncCancel()V
    .registers 3

    .prologue
    .line 284
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_SYNC_ONCE"

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->cancel(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public syncClear()V
    .registers 6

    .prologue
    .line 288
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->gc()V

    .line 289
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 290
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_SYNC_CLEAR"

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/DataService;->access$300(Lcom/google/android/inputmethod/pinyin/DataService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/DataService;->access$400(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/SyncEngine;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/ClearTask;->getInstance(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;Lcom/google/android/inputmethod/pinyin/SyncEngine;)Lcom/google/android/inputmethod/pinyin/ClearTask;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->schedule(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;)Z

    .line 293
    :cond_2e
    return-void
.end method

.method public syncStart()V
    .registers 6

    .prologue
    .line 276
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->gc()V

    .line 277
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    if-eqz v0, :cond_2e

    .line 278
    invoke-static {}, Lcom/google/android/inputmethod/pinyin/DataService;->access$200()Lcom/google/android/inputmethod/pinyin/TaskScheduler;

    move-result-object v0

    const-string v1, "TASK_SYNC_ONCE"

    iget-object v2, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v2}, Lcom/google/android/inputmethod/pinyin/DataService;->access$300(Lcom/google/android/inputmethod/pinyin/DataService;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v3}, Lcom/google/android/inputmethod/pinyin/DataService;->access$000(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/inputmethod/pinyin/DataService$2;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v4}, Lcom/google/android/inputmethod/pinyin/DataService;->access$400(Lcom/google/android/inputmethod/pinyin/DataService;)Lcom/google/android/inputmethod/pinyin/SyncEngine;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/google/android/inputmethod/pinyin/SyncTask;->getInstance(Landroid/content/Context;Lcom/google/android/inputmethod/pinyin/IDecoder;Lcom/google/android/inputmethod/pinyin/SyncEngine;)Lcom/google/android/inputmethod/pinyin/SyncTask;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/TaskScheduler;->schedule(Ljava/lang/String;Lcom/google/android/inputmethod/pinyin/TaskScheduler$Task;)Z

    .line 281
    :cond_2e
    return-void
.end method
