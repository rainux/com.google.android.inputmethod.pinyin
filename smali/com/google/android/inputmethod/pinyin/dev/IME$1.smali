.class final Lcom/google/android/inputmethod/pinyin/dev/IME$1;
.super Ljava/lang/Object;
.source "IME.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/IME;->showComposingWindow(Ljava/lang/CharSequence;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

.field final synthetic val$text:Ljava/lang/CharSequence;

.field final synthetic val$visible:Z


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/IME;ZLjava/lang/CharSequence;)V
    .registers 4
    .parameter
    .parameter
    .parameter

    .prologue
    .line 293
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    iput-boolean p2, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->val$visible:Z

    iput-object p3, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->val$text:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 296
    iget-boolean v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->val$visible:Z

    if-eqz v0, :cond_20

    .line 297
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$000(Lcom/google/android/inputmethod/pinyin/dev/IME;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$100(Lcom/google/android/inputmethod/pinyin/dev/IME;)Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 298
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$100(Lcom/google/android/inputmethod/pinyin/dev/IME;)Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->val$text:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->show(Ljava/lang/CharSequence;)V

    .line 317
    :cond_1f
    :goto_1f
    return-void

    .line 301
    :cond_20
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$100(Lcom/google/android/inputmethod/pinyin/dev/IME;)Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 302
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/IME$1;->this$0:Lcom/google/android/inputmethod/pinyin/dev/IME;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/dev/IME;->access$100(Lcom/google/android/inputmethod/pinyin/dev/IME;)Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/inputmethod/pinyin/dev/ComposingWindow;->dismiss()V

    goto :goto_1f
.end method
