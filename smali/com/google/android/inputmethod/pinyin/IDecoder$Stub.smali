.class public abstract Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;
.super Landroid/os/Binder;
.source "IDecoder.java"

# interfaces
.implements Lcom/google/android/inputmethod/pinyin/IDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/inputmethod/pinyin/IDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/inputmethod/pinyin/IDecoder$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.google.android.inputmethod.pinyin.IDecoder"

.field static final TRANSACTION_closeDecoder:I = 0x4

.field static final TRANSACTION_getDecoderMode:I = 0x1

.field static final TRANSACTION_imAddLetter:I = 0x9

.field static final TRANSACTION_imCancelInput:I = 0x13

.field static final TRANSACTION_imCancelLastChoice:I = 0x11

.field static final TRANSACTION_imCancelLastChoiceOfNextSpl:I = 0x1c

.field static final TRANSACTION_imChoose:I = 0x10

.field static final TRANSACTION_imChooseNextSpl:I = 0x1a

.field static final TRANSACTION_imDelSearch:I = 0x7

.field static final TRANSACTION_imDoTimeCostingOperation:I = 0x17

.field static final TRANSACTION_imFlushCache:I = 0x14

.field static final TRANSACTION_imGetChoice:I = 0xd

.field static final TRANSACTION_imGetChoiceList:I = 0xf

.field static final TRANSACTION_imGetChoices:I = 0xe

.field static final TRANSACTION_imGetConvertedSplStr:I = 0x1b

.field static final TRANSACTION_imGetFixedLen:I = 0x12

.field static final TRANSACTION_imGetFixedSpsIdNum:I = 0x1e

.field static final TRANSACTION_imGetFixedSpsStrLen:I = 0x1d

.field static final TRANSACTION_imGetNextSpls:I = 0x18

.field static final TRANSACTION_imGetNextSplsActiveIndex:I = 0x19

.field static final TRANSACTION_imGetPredictItem:I = 0x21

.field static final TRANSACTION_imGetPredictList:I = 0x20

.field static final TRANSACTION_imGetPredictsNum:I = 0x1f

.field static final TRANSACTION_imGetPyStr:I = 0xa

.field static final TRANSACTION_imGetPyStrLen:I = 0xb

.field static final TRANSACTION_imGetSplStart:I = 0xc

.field static final TRANSACTION_imNeedTimeCostingOperation:I = 0x16

.field static final TRANSACTION_imOnInputCycleEnd:I = 0x15

.field static final TRANSACTION_imResetSearch:I = 0x8

.field static final TRANSACTION_imSearch:I = 0x6

.field static final TRANSACTION_imSetMaxLens:I = 0x5

.field static final TRANSACTION_imSetPinyinKeymapMode:I = 0x24

.field static final TRANSACTION_imSetStrokeFaultTolerance:I = 0x23

.field static final TRANSACTION_imTrainPredicts:I = 0x22

.field static final TRANSACTION_openDecoder:I = 0x3

.field static final TRANSACTION_setDecoderMode:I = 0x2

.field static final TRANSACTION_syncBegin:I = 0x25

.field static final TRANSACTION_syncClearLastGot:I = 0x2b

.field static final TRANSACTION_syncFinish:I = 0x26

.field static final TRANSACTION_syncGetCapacity:I = 0x2c

.field static final TRANSACTION_syncGetLastCount:I = 0x29

.field static final TRANSACTION_syncGetLemmas:I = 0x28

.field static final TRANSACTION_syncGetTotalCount:I = 0x2a

.field static final TRANSACTION_syncPutLemmas:I = 0x27

.field static final TRANSACTION_updateBegin:I = 0x2d

.field static final TRANSACTION_updateFinish:I = 0x2e

.field static final TRANSACTION_updatePutLemmas:I = 0x2f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p0, p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/inputmethod/pinyin/IDecoder;
    .registers 3
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v1, 0x0

    .line 30
    :goto_3
    return-object v1

    .line 26
    :cond_4
    const-string v1, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/google/android/inputmethod/pinyin/IDecoder;

    if-eqz v1, :cond_14

    .line 28
    check-cast v0, Lcom/google/android/inputmethod/pinyin/IDecoder;

    .end local v0           #iin:Landroid/os/IInterface;
    move-object v1, v0

    goto :goto_3

    .line 30
    .restart local v0       #iin:Landroid/os/IInterface;
    :cond_14
    new-instance v1, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x1

    const-string v7, "com.google.android.inputmethod.pinyin.IDecoder"

    .line 38
    sparse-switch p1, :sswitch_data_3de

    .line 465
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 42
    :sswitch_c
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 43
    goto :goto_b

    .line 47
    :sswitch_13
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->getDecoderMode()I

    move-result v3

    .line 49
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 51
    goto :goto_b

    .line 55
    .end local v3           #_result:I
    :sswitch_24
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 58
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->setDecoderMode(I)V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 60
    goto :goto_b

    .line 64
    .end local v0           #_arg0:I
    :sswitch_35
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->openDecoder()Z

    move-result v3

    .line 66
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    if-eqz v3, :cond_49

    move v5, v6

    :goto_44
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 68
    goto :goto_b

    :cond_49
    move v5, v8

    .line 67
    goto :goto_44

    .line 72
    .end local v3           #_result:Z
    :sswitch_4b
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->closeDecoder()Z

    move-result v3

    .line 74
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v3, :cond_5f

    move v5, v6

    :goto_5a
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 76
    goto :goto_b

    :cond_5f
    move v5, v8

    .line 75
    goto :goto_5a

    .line 80
    .end local v3           #_result:Z
    :sswitch_61
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 85
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imSetMaxLens(II)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 87
    goto :goto_b

    .line 91
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    :sswitch_76
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 95
    .local v0, _arg0:[B
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 96
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imSearch([BI)I

    move-result v3

    .line 97
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 99
    goto/16 :goto_b

    .line 103
    .end local v0           #_arg0:[B
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_90
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b4

    move v1, v6

    .line 109
    .local v1, _arg1:Z
    :goto_a0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_b6

    move v2, v6

    .line 110
    .local v2, _arg2:Z
    :goto_a7
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imDelSearch(IZZ)I

    move-result v3

    .line 111
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 113
    goto/16 :goto_b

    .end local v1           #_arg1:Z
    .end local v2           #_arg2:Z
    .end local v3           #_result:I
    :cond_b4
    move v1, v8

    .line 107
    goto :goto_a0

    .restart local v1       #_arg1:Z
    :cond_b6
    move v2, v8

    .line 109
    goto :goto_a7

    .line 117
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    :sswitch_b8
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imResetSearch()V

    .line 119
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 120
    goto/16 :goto_b

    .line 124
    :sswitch_c6
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 127
    .local v0, _arg0:B
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imAddLetter(B)I

    move-result v3

    .line 128
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 130
    goto/16 :goto_b

    .line 134
    .end local v0           #_arg0:B
    .end local v3           #_result:I
    :sswitch_dc
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f5

    move v0, v6

    .line 137
    .local v0, _arg0:Z
    :goto_e8
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetPyStr(Z)Ljava/lang/String;

    move-result-object v3

    .line 138
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 140
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:Ljava/lang/String;
    :cond_f5
    move v0, v8

    .line 136
    goto :goto_e8

    .line 144
    :sswitch_f7
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_110

    move v0, v6

    .line 147
    .restart local v0       #_arg0:Z
    :goto_103
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetPyStrLen(Z)I

    move-result v3

    .line 148
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 149
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 150
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    .end local v3           #_result:I
    :cond_110
    move v0, v8

    .line 146
    goto :goto_103

    .line 154
    :sswitch_112
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetSplStart()[I

    move-result-object v3

    .line 156
    .local v3, _result:[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeIntArray([I)V

    move v5, v6

    .line 158
    goto/16 :goto_b

    .line 162
    .end local v3           #_result:[I
    :sswitch_124
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 165
    .local v0, _arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetChoice(I)Ljava/lang/String;

    move-result-object v3

    .line 166
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 168
    goto/16 :goto_b

    .line 172
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_13a
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 175
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetChoices(I)Ljava/lang/String;

    move-result-object v3

    .line 176
    .restart local v3       #_result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 178
    goto/16 :goto_b

    .line 182
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_150
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 188
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 189
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetChoiceList(III)Ljava/util/List;

    move-result-object v4

    .line 190
    .local v4, _result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v5, v6

    .line 192
    goto/16 :goto_b

    .line 196
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v2           #_arg2:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_16e
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 199
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imChoose(I)I

    move-result v3

    .line 200
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 202
    goto/16 :goto_b

    .line 206
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_184
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imCancelLastChoice()I

    move-result v3

    .line 208
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 210
    goto/16 :goto_b

    .line 214
    .end local v3           #_result:I
    :sswitch_196
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetFixedLen()I

    move-result v3

    .line 216
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 218
    goto/16 :goto_b

    .line 222
    .end local v3           #_result:I
    :sswitch_1a8
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imCancelInput()Z

    move-result v3

    .line 224
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    if-eqz v3, :cond_1bd

    move v5, v6

    :goto_1b7
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 226
    goto/16 :goto_b

    :cond_1bd
    move v5, v8

    .line 225
    goto :goto_1b7

    .line 230
    .end local v3           #_result:Z
    :sswitch_1bf
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imFlushCache()V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 233
    goto/16 :goto_b

    .line 237
    :sswitch_1cd
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imOnInputCycleEnd()Z

    move-result v3

    .line 239
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    if-eqz v3, :cond_1e2

    move v5, v6

    :goto_1dc
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 241
    goto/16 :goto_b

    :cond_1e2
    move v5, v8

    .line 240
    goto :goto_1dc

    .line 245
    .end local v3           #_result:Z
    :sswitch_1e4
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imNeedTimeCostingOperation()Z

    move-result v3

    .line 247
    .restart local v3       #_result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    if-eqz v3, :cond_1f9

    move v5, v6

    :goto_1f3
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 249
    goto/16 :goto_b

    :cond_1f9
    move v5, v8

    .line 248
    goto :goto_1f3

    .line 253
    .end local v3           #_result:Z
    :sswitch_1fb
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imDoTimeCostingOperation()V

    .line 255
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 256
    goto/16 :goto_b

    .line 260
    :sswitch_209
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetNextSpls()[Ljava/lang/String;

    move-result-object v3

    .line 262
    .local v3, _result:[Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 263
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    move v5, v6

    .line 264
    goto/16 :goto_b

    .line 268
    .end local v3           #_result:[Ljava/lang/String;
    :sswitch_21b
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetNextSplsActiveIndex()I

    move-result v3

    .line 270
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 272
    goto/16 :goto_b

    .line 276
    .end local v3           #_result:I
    :sswitch_22d
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imChooseNextSpl(I)I

    move-result v3

    .line 280
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 281
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 282
    goto/16 :goto_b

    .line 286
    .end local v0           #_arg0:I
    .end local v3           #_result:I
    :sswitch_243
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetConvertedSplStr()Ljava/lang/String;

    move-result-object v3

    .line 288
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 289
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 290
    goto/16 :goto_b

    .line 294
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_255
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imCancelLastChoiceOfNextSpl()I

    move-result v3

    .line 296
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 297
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 298
    goto/16 :goto_b

    .line 302
    .end local v3           #_result:I
    :sswitch_267
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetFixedSpsStrLen()I

    move-result v3

    .line 304
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 306
    goto/16 :goto_b

    .line 310
    .end local v3           #_result:I
    :sswitch_279
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetFixedSpsIdNum()I

    move-result v3

    .line 312
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 313
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 314
    goto/16 :goto_b

    .line 318
    .end local v3           #_result:I
    :sswitch_28b
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 321
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetPredictsNum(Ljava/lang/String;)I

    move-result v3

    .line 322
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 323
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 324
    goto/16 :goto_b

    .line 328
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_2a1
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 332
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 333
    .restart local v1       #_arg1:I
    invoke-virtual {p0, v0, v1}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetPredictList(II)Ljava/util/List;

    move-result-object v4

    .line 334
    .restart local v4       #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    move v5, v6

    .line 336
    goto/16 :goto_b

    .line 340
    .end local v0           #_arg0:I
    .end local v1           #_arg1:I
    .end local v4           #_result:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :sswitch_2bb
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 343
    .restart local v0       #_arg0:I
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imGetPredictItem(I)Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 345
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 346
    goto/16 :goto_b

    .line 350
    .end local v0           #_arg0:I
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_2d1
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imTrainPredicts(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 355
    goto/16 :goto_b

    .line 359
    .end local v0           #_arg0:Ljava/lang/String;
    :sswitch_2e3
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f8

    move v0, v6

    .line 362
    .local v0, _arg0:Z
    :goto_2ef
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imSetStrokeFaultTolerance(Z)V

    .line 363
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 364
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_2f8
    move v0, v8

    .line 361
    goto :goto_2ef

    .line 368
    :sswitch_2fa
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30f

    move v0, v6

    .line 371
    .restart local v0       #_arg0:Z
    :goto_306
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->imSetPinyinKeymapMode(Z)V

    .line 372
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 373
    goto/16 :goto_b

    .end local v0           #_arg0:Z
    :cond_30f
    move v0, v8

    .line 370
    goto :goto_306

    .line 377
    :sswitch_311
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncBegin()Z

    move-result v3

    .line 379
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    if-eqz v3, :cond_326

    move v5, v6

    :goto_320
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 381
    goto/16 :goto_b

    :cond_326
    move v5, v8

    .line 380
    goto :goto_320

    .line 385
    .end local v3           #_result:Z
    :sswitch_328
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncFinish()V

    .line 387
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 388
    goto/16 :goto_b

    .line 392
    :sswitch_336
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 395
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncPutLemmas(Ljava/lang/String;)I

    move-result v3

    .line 396
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 397
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 398
    goto/16 :goto_b

    .line 402
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_34c
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncGetLemmas()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v5, v6

    .line 406
    goto/16 :goto_b

    .line 410
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_35e
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 411
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncGetLastCount()I

    move-result v3

    .line 412
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 413
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 414
    goto/16 :goto_b

    .line 418
    .end local v3           #_result:I
    :sswitch_370
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncGetTotalCount()I

    move-result v3

    .line 420
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 421
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 422
    goto/16 :goto_b

    .line 426
    .end local v3           #_result:I
    :sswitch_382
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 427
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncClearLastGot()V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 429
    goto/16 :goto_b

    .line 433
    :sswitch_390
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->syncGetCapacity()I

    move-result v3

    .line 435
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 437
    goto/16 :goto_b

    .line 441
    .end local v3           #_result:I
    :sswitch_3a2
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->updateBegin()Z

    move-result v3

    .line 443
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    if-eqz v3, :cond_3b7

    move v5, v6

    :goto_3b1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 445
    goto/16 :goto_b

    :cond_3b7
    move v5, v8

    .line 444
    goto :goto_3b1

    .line 449
    .end local v3           #_result:Z
    :sswitch_3b9
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->updateFinish()V

    .line 451
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    move v5, v6

    .line 452
    goto/16 :goto_b

    .line 456
    :sswitch_3c7
    const-string v5, "com.google.android.inputmethod.pinyin.IDecoder"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 459
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/google/android/inputmethod/pinyin/IDecoder$Stub;->updatePutLemmas(Ljava/lang/String;)I

    move-result v3

    .line 460
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    move v5, v6

    .line 462
    goto/16 :goto_b

    .line 38
    nop

    :sswitch_data_3de
    .sparse-switch
        0x1 -> :sswitch_13
        0x2 -> :sswitch_24
        0x3 -> :sswitch_35
        0x4 -> :sswitch_4b
        0x5 -> :sswitch_61
        0x6 -> :sswitch_76
        0x7 -> :sswitch_90
        0x8 -> :sswitch_b8
        0x9 -> :sswitch_c6
        0xa -> :sswitch_dc
        0xb -> :sswitch_f7
        0xc -> :sswitch_112
        0xd -> :sswitch_124
        0xe -> :sswitch_13a
        0xf -> :sswitch_150
        0x10 -> :sswitch_16e
        0x11 -> :sswitch_184
        0x12 -> :sswitch_196
        0x13 -> :sswitch_1a8
        0x14 -> :sswitch_1bf
        0x15 -> :sswitch_1cd
        0x16 -> :sswitch_1e4
        0x17 -> :sswitch_1fb
        0x18 -> :sswitch_209
        0x19 -> :sswitch_21b
        0x1a -> :sswitch_22d
        0x1b -> :sswitch_243
        0x1c -> :sswitch_255
        0x1d -> :sswitch_267
        0x1e -> :sswitch_279
        0x1f -> :sswitch_28b
        0x20 -> :sswitch_2a1
        0x21 -> :sswitch_2bb
        0x22 -> :sswitch_2d1
        0x23 -> :sswitch_2e3
        0x24 -> :sswitch_2fa
        0x25 -> :sswitch_311
        0x26 -> :sswitch_328
        0x27 -> :sswitch_336
        0x28 -> :sswitch_34c
        0x29 -> :sswitch_35e
        0x2a -> :sswitch_370
        0x2b -> :sswitch_382
        0x2c -> :sswitch_390
        0x2d -> :sswitch_3a2
        0x2e -> :sswitch_3b9
        0x2f -> :sswitch_3c7
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
