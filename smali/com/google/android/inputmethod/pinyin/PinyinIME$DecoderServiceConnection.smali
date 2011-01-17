.class public Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;
.super Ljava/lang/Object;
.source "PinyinIME.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DecoderServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;


# direct methods
.method public constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME;)V
    .registers 2
    .parameter

    .prologue
    .line 2223
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5
    .parameter "name"
    .parameter "service"

    .prologue
    .line 2225
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v0

    invoke-static {p2}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$202(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;Lcom/google/android/inputmethod/pinyin/IDecoder;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    .line 2228
    :try_start_d
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecoderServiceConnection;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$100(Lcom/google/android/inputmethod/pinyin/PinyinIME;)Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imSetPinyinKeymapMode(Z)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_d .. :try_end_1b} :catch_1c

    .line 2230
    :goto_1b
    return-void

    .line 2229
    :catch_1c
    move-exception v0

    goto :goto_1b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 2
    .parameter "name"

    .prologue
    .line 2233
    return-void
.end method
