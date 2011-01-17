.class final Lcom/google/android/inputmethod/pinyin/PinyinIME$1;
.super Landroid/content/BroadcastReceiver;
.source "PinyinIME.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 2
    .parameter

    .prologue
    .line 219
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$1;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 5
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 222
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_26

    .line 224
    :try_start_c
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$1;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 225
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$1;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imFlushCache()V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_25} :catch_3a

    .line 233
    :cond_25
    :goto_25
    return-void

    .line 229
    :cond_26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 231
    invoke-static {p1}, Lcom/google/android/inputmethod/pinyin/SoundManager;->getInstance(Landroid/content/Context;)Lcom/google/android/inputmethod/pinyin/SoundManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/SoundManager;->updateRingerMode()V

    goto :goto_25

    .line 227
    :catch_3a
    move-exception v0

    goto :goto_25
.end method
