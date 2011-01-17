.class Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;
.super Ljava/lang/Object;
.source "KeyPressLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/KeyPressLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Point"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/inputmethod/pinyin/KeyPressLog;

.field x:I

.field y:I


# direct methods
.method constructor <init>(Lcom/google/android/inputmethod/pinyin/KeyPressLog;)V
    .registers 2
    .parameter

    .prologue
    .line 6
    iput-object p1, p0, Lcom/google/android/inputmethod/pinyin/KeyPressLog$Point;->this$0:Lcom/google/android/inputmethod/pinyin/KeyPressLog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
