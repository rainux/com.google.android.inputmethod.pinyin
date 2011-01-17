.class final Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView$1;
.super Ljava/lang/Object;
.source "GridButtonWindow.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/dev/ResourceManager$OnResourceChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;-><init>(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

.field final synthetic val$this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;)V
    .registers 3
    .parameter
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView$1;->this$1:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

    iput-object p2, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView$1;->val$this$0:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResourceChanged(Lcom/google/android/inputmethod/pinyin/dev/Resource;)V
    .registers 3
    .parameter "newResource"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView$1;->this$1:Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;

    invoke-static {v0, p1}, Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;->access$100(Lcom/google/android/inputmethod/pinyin/dev/GridButtonWindow$GridButtonView;Lcom/google/android/inputmethod/pinyin/dev/Resource;)V

    .line 136
    return-void
.end method
