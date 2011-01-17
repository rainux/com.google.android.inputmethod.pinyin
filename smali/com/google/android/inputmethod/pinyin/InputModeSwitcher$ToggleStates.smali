.class Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;
.super Ljava/lang/Object;
.source "InputModeSwitcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ToggleStates"
.end annotation


# instance fields
.field public mKeyStates:[I

.field public mKeyStatesNum:I

.field mQwerty:Z

.field mQwertyUpperCase:Z

.field public mRowIdToEnable:I

.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;)V
    .registers 3
    .parameter

    .prologue
    .line 528
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->this$0:Lcom/google/android/inputmethod/pinyin/InputModeSwitcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 550
    const/4 v0, 0x6

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/inputmethod/pinyin/InputModeSwitcher$ToggleStates;->mKeyStates:[I

    return-void
.end method
