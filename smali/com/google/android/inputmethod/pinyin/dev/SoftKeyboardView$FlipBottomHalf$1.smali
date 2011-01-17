.class final Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;
.super Ljava/lang/Object;
.source "SoftKeyboardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;)V
    .registers 2
    .parameter

    .prologue
    .line 537
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;->this$1:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;->this$1:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;->this$1:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->access$800(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$900(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;)V

    .line 540
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;->this$1:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;

    iget-object v0, v0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->this$0:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf$1;->this$1:Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;->access$800(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView$FlipBottomHalf;)Lcom/google/android/inputmethod/pinyin/dev/SoftKey;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;->access$200(Lcom/google/android/inputmethod/pinyin/dev/SoftKeyboardView;Lcom/google/android/inputmethod/pinyin/dev/SoftKey;Z)V

    .line 541
    return-void
.end method
