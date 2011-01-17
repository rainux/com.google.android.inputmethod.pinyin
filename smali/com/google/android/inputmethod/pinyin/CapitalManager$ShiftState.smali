.class public final enum Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
.super Ljava/lang/Enum;
.source "CapitalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/CapitalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ShiftState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

.field public static final enum ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

.field public static final enum CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

.field public static final enum ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 18
    new-instance v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    const-string v1, "ORIGINAL"

    invoke-direct {v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 22
    new-instance v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    const-string v1, "CAPITALIZE_FIRST"

    invoke-direct {v0, v1, v3}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 26
    new-instance v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    const-string v1, "ALL_CAPITALIZED"

    invoke-direct {v0, v1, v4}, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    .line 14
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ORIGINAL:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->CAPITALIZE_FIRST:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->ALL_CAPITALIZED:Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->$VALUES:[Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    .registers 2
    .parameter "name"

    .prologue
    .line 14
    const-class v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    return-object p0
.end method

.method public static values()[Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->$VALUES:[Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    invoke-virtual {v0}, [Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/inputmethod/pinyin/CapitalManager$ShiftState;

    return-object v0
.end method
