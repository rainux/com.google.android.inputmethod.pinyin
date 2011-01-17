.class final Lcom/google/android/inputmethod/pinyin/dev/IME$3;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/IME;->startDecoder()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;)V
    .registers 2
    .parameter

    .prologue
    .line 352
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$3;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .parameter "name"
    .parameter "service"

    .prologue
    const-class v1, Lcom/google/android/inputmethod/pinyin/dev/IME;

    .line 354
    const-class v0, Lcom/google/android/inputmethod/pinyin/dev/IME;

    monitor-enter v1

    .line 355
    :try_start_5
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$3;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-static {p2}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$302(Lcom/google/android/inputmethod/pinyin/dev/IME;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 356
    const-class v1, Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 357
    monitor-exit v0

    .line 358
    return-void

    .line 357
    :catchall_15
    move-exception v1

    monitor-exit v0
    :try_end_17
    .catchall {:try_start_5 .. :try_end_17} :catchall_15

    throw v1
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .parameter "name"

    .prologue
    const-class v1, Lcom/google/android/inputmethod/pinyin/dev/IME;

    .line 360
    const-class v0, Lcom/google/android/inputmethod/pinyin/dev/IME;

    monitor-enter v1

    .line 361
    :try_start_5
    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$3;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$302(Lcom/google/android/inputmethod/pinyin/dev/IME;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 362
    const-class v1, Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 363
    monitor-exit v0

    .line 364
    return-void

    .line 363
    :catchall_12
    move-exception v1

    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_12

    throw v1
.end method
