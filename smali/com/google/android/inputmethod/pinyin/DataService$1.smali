.class final Lcom/google/android/inputmethod/pinyin/DataService$1;
.super Ljava/lang/Object;
.source "DataService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 86
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/DataService$1;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    const-string v1, "DataService"

    .line 88
    const-string v0, "DataService"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 89
    const-string v0, "DataService"

    const-string v0, "IME service binded."

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_12
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$1;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {p2}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/DataService;->access$002(Lcom/google/android/inputmethod/pinyin/DataService;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 91
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$1;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/DataService;->access$100(Lcom/google/android/inputmethod/pinyin/DataService;)Z

    .line 92
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 4
    .parameter "name"

    .prologue
    const-string v1, "DataService"

    .line 95
    const-string v0, "DataService"

    const/4 v0, 0x3

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 96
    const-string v0, "DataService"

    const-string v0, "Lost connection to IME service, further sync task stopped"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    :cond_12
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/DataService$1;->this$0:Lcom/google/android/inputmethod/pinyin/DataService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/DataService;->access$002(Lcom/google/android/inputmethod/pinyin/DataService;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 99
    return-void
.end method
