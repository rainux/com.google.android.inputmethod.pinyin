.class final Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;
.super Ljava/lang/Object;
.source "PinyinIME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->onInputCycleEnd()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)V
    .registers 2
    .parameter

    .prologue
    .line 2888
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;->this$1:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 2891
    :try_start_1
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;->this$1:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->access$200(Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;)Lcom/google/android/inputmethod/pinyin/IDecoder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/inputmethod/pinyin/IDecoder;->imDoTimeCostingOperation()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_a} :catch_25

    .line 2894
    :goto_a
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;->this$1:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    .line 2895
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;->this$1:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    iput-object v1, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 2896
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo$1;->this$1:Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/PinyinIME$DecodingInfo;->this$0:Lcom/google/android/inputmethod/pinyin/PinyinIME;

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/PinyinIME;->access$1702(Lcom/google/android/inputmethod/pinyin/PinyinIME;Landroid/os/Handler;)Landroid/os/Handler;

    .line 2897
    return-void

    .line 2892
    :catch_25
    move-exception v0

    goto :goto_a
.end method
