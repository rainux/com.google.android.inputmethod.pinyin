.class final Lcom/google/android/inputmethod/pinyin/dev/IME$2;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/IME;->blockingStartDecoder()V
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
    .line 323
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$2;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$2;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$200(Lcom/google/android/inputmethod/pinyin/dev/IME;)V

    .line 326
    return-void
.end method
