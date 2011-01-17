.class final Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;
.super Ljava/lang/Object;
.source "AnimationHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/AnimationHelper;->init(Landroid/content/Context;ILandroid/os/Handler;Landroid/view/View;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)V
    .registers 2
    .parameter

    .prologue
    .line 49
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 51
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$000(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)I

    move-result v0

    if-lez v0, :cond_1c

    .line 52
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$200(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v1}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$100(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)Landroid/view/animation/AnimationSet;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 53
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/AnimationHelper$1;->this$0:Lcom/google/android/inputmethod/pinyin/AnimationHelper;

    invoke-static {v0}, Lcom/google/android/inputmethod/pinyin/AnimationHelper;->access$010(Lcom/google/android/inputmethod/pinyin/AnimationHelper;)I

    .line 55
    :cond_1c
    return-void
.end method
