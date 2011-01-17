.class public final enum Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;
.super Ljava/lang/Enum;
.source "ComposingView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/ComposingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ComposingStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

.field public static final enum EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

.field public static final enum SHOW_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

.field public static final enum SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 73
    new-instance v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    const-string v1, "SHOW_PINYIN"

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    new-instance v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    const-string v1, "SHOW_STRING_LOWERCASE"

    invoke-direct {v0, v1, v3}, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    new-instance v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    const-string v1, "EDIT_PINYIN"

    invoke-direct {v0, v1, v4}, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    .line 72
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    sget-object v1, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->SHOW_STRING_LOWERCASE:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->EDIT_PINYIN:Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->$VALUES:[Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 72
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;
    .registers 2
    .parameter "name"

    .prologue
    .line 72
    const-class v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    return-object p0
.end method

.method public static values()[Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;
    .registers 1

    .prologue
    .line 72
    sget-object v0, Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->$VALUES:[Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    invoke-virtual {v0}, [Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/inputmethod/pinyin/ComposingView$ComposingStatus;

    return-object v0
.end method
