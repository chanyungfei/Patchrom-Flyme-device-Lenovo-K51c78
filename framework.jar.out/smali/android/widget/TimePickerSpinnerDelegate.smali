.class Landroid/widget/TimePickerSpinnerDelegate;
.super Landroid/widget/TimePicker$AbstractTimePickerDelegate;
.source "TimePickerSpinnerDelegate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    }
.end annotation


# static fields
.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final HOURS_IN_HALF_DAY:I = 0xc


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private mAmPmParent:Landroid/widget/LinearLayout;

.field private final mAmPmSpinner:Landroid/widget/NumberPicker;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mDivider:Landroid/widget/TextView;

.field private mHourFormat:C

.field private final mHourSpinner:Landroid/widget/NumberPicker;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mHourWithTwoDigit:Z

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mListDivider:Landroid/widget/TextView;

.field private final mMinuteSpinner:Landroid/widget/NumberPicker;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private mTempCalendar:Ljava/util/Calendar;


# direct methods
.method public constructor <init>(Landroid/widget/TimePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 16
    .param p1, "delegator"    # Landroid/widget/TimePicker;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;
    .param p4, "defStyleAttr"    # I
    .param p5, "defStyleRes"    # I

    .prologue
    .line 83
    invoke-direct/range {p0 .. p2}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;-><init>(Landroid/widget/TimePicker;Landroid/content/Context;)V

    .line 76
    const/4 v12, 0x1

    move-object/from16 v0, p0

    iput-boolean v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 86
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    sget-object v13, Lcom/android/internal/R$styleable;->TimePicker:[I

    move-object/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    invoke-virtual {v12, v0, v13, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 88
    .local v4, "a":Landroid/content/res/TypedArray;
    const/16 v12, 0xa

    const v13, #android:layout@time_picker_legacy#t

    invoke-virtual {v4, v12, v13}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    .line 90
    .local v9, "layoutResourceId":I
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 92
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-static {v12}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 93
    .local v8, "inflater":Landroid/view/LayoutInflater;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v13, 0x1

    invoke-virtual {v8, v9, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v12, #android:id@timePickerLayout#t

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/LinearLayout;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmParent:Landroid/widget/LinearLayout;

    .line 97
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmParent:Landroid/widget/LinearLayout;

    if-eqz v12, :cond_0

    .line 98
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmParent:Landroid/widget/LinearLayout;

    const v13, #android:id@image#t

    invoke-virtual {v12, v13}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    .line 103
    :cond_0
    const v12, #android:id@hour#t

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    .line 104
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$1;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 117
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v13, #android:id@numberpicker_input#t

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 118
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 121
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v13, #android:id@divider#t

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    .line 122
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v12, :cond_1

    .line 123
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setDividerText()V

    .line 127
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v13, #android:id@minute#t

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    .line 128
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 129
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const/16 v13, 0x3b

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const-wide/16 v14, 0x64

    invoke-virtual {v12, v14, v15}, Landroid/widget/NumberPicker;->setOnLongPressUpdateInterval(J)V

    .line 131
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 132
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$2;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 155
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v13, #android:id@numberpicker_input#t

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 156
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x5

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 159
    invoke-static/range {p2 .. p2}, Landroid/widget/TimePickerSpinnerDelegate;->getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    .line 162
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const v13, #android:id@amPm#t

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 163
    .local v6, "amPmView":Landroid/view/View;
    instance-of v12, v6, Landroid/widget/Button;

    if-eqz v12, :cond_6

    .line 164
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 165
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object v12, v6

    .line 166
    check-cast v12, Landroid/widget/Button;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    .line 167
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$3;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$3;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    :goto_0
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isAmPmAtStart()Z

    move-result v12

    if-eqz v12, :cond_2

    const v12, #android:id@timePickerLayout#t

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/widget/TimePicker;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    .line 197
    .local v5, "amPmParent":Landroid/view/ViewGroup;
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 198
    const/4 v12, 0x0

    invoke-virtual {v5, v6, v12}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 201
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 203
    .local v10, "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result v11

    .line 204
    .local v11, "startMargin":I
    invoke-virtual {v10}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    .line 205
    .local v7, "endMargin":I
    if-eq v11, v7, :cond_2

    .line 206
    invoke-virtual {v10, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 207
    invoke-virtual {v10, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 211
    .end local v5    # "amPmParent":Landroid/view/ViewGroup;
    .end local v7    # "endMargin":I
    .end local v10    # "lp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v11    # "startMargin":I
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 214
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 215
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 216
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 219
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xb

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(Ljava/lang/Integer;)V

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v13, 0xc

    invoke-virtual {v12, v13}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 222
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->isEnabled()Z

    move-result v12

    if-nez v12, :cond_3

    .line 223
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/widget/TimePickerSpinnerDelegate;->setEnabled(Z)V

    .line 227
    :cond_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/TimePickerSpinnerDelegate;->setContentDescriptions()V

    .line 230
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v12}, Landroid/widget/TimePicker;->getImportantForAccessibility()I

    move-result v12

    if-nez v12, :cond_4

    .line 231
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/TimePicker;->setImportantForAccessibility(I)V

    .line 235
    :cond_4
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 236
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    if-eqz v12, :cond_5

    .line 237
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    .line 242
    :cond_5
    return-void

    .line 176
    :cond_6
    const/4 v12, 0x0

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    move-object v12, v6

    .line 177
    check-cast v12, Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    .line 178
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 179
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 180
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setDisplayedValues([Ljava/lang/String;)V

    .line 181
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    new-instance v13, Landroid/widget/TimePickerSpinnerDelegate$4;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Landroid/widget/TimePickerSpinnerDelegate$4;-><init>(Landroid/widget/TimePickerSpinnerDelegate;)V

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->setOnValueChangedListener(Landroid/widget/NumberPicker$OnValueChangeListener;)V

    .line 190
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v13, #android:id@numberpicker_input#t

    invoke-virtual {v12, v13}, Landroid/widget/NumberPicker;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 191
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    const/4 v13, 0x6

    invoke-virtual {v12, v13}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_0
.end method

.method static synthetic access$000(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/TimePickerSpinnerDelegate;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 48
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return v0
.end method

.method static synthetic access$102(Landroid/widget/TimePickerSpinnerDelegate;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    return p1
.end method

.method static synthetic access$200(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/TimePickerSpinnerDelegate;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/TimePickerSpinnerDelegate;)Landroid/widget/NumberPicker;
    .locals 1
    .param p0, "x0"    # Landroid/widget/TimePickerSpinnerDelegate;

    .prologue
    .line 48
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    return-object v0
.end method

.method public static getAmPmStrings(Landroid/content/Context;)[Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 638
    new-array v1, v5, [Ljava/lang/String;

    .line 639
    .local v1, "result":[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v2}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 640
    .local v0, "d":Llibcore/icu/LocaleData;
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_0

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowAm:Ljava/lang/String;

    :goto_0
    aput-object v2, v1, v3

    .line 641
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v5, :cond_1

    iget-object v2, v0, Llibcore/icu/LocaleData;->narrowPm:Ljava/lang/String;

    :goto_1
    aput-object v2, v1, v4

    .line 642
    return-object v1

    .line 640
    :cond_0
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v3

    goto :goto_0

    .line 641
    :cond_1
    iget-object v2, v0, Llibcore/icu/LocaleData;->amPm:[Ljava/lang/String;

    aget-object v2, v2, v4

    goto :goto_1
.end method

.method private getHourFormatData()V
    .locals 7

    .prologue
    .line 245
    iget-object v6, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_2

    const-string v5, "Hm"

    :goto_0
    invoke-static {v6, v5}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    .line 248
    .local v4, "lengthPattern":I
    const/4 v5, 0x0

    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 249
    const/4 v2, 0x0

    .line 252
    .local v2, "hourFormat":C
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v4, :cond_1

    .line 253
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 254
    .local v1, "c":C
    const/16 v5, 0x48

    if-eq v1, v5, :cond_0

    const/16 v5, 0x68

    if-eq v1, v5, :cond_0

    const/16 v5, 0x4b

    if-eq v1, v5, :cond_0

    const/16 v5, 0x6b

    if-ne v1, v5, :cond_3

    .line 255
    :cond_0
    iput-char v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    .line 256
    add-int/lit8 v5, v3, 0x1

    if-ge v5, v4, :cond_1

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v1, v5, :cond_1

    .line 257
    const/4 v5, 0x1

    iput-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    .line 262
    .end local v1    # "c":C
    :cond_1
    return-void

    .line 245
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v2    # "hourFormat":C
    .end local v3    # "i":I
    .end local v4    # "lengthPattern":I
    :cond_2
    const-string v5, "hm"

    goto :goto_0

    .line 252
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "c":C
    .restart local v2    # "hourFormat":C
    .restart local v3    # "i":I
    .restart local v4    # "lengthPattern":I
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private isAmPmAtStart()Z
    .locals 3

    .prologue
    .line 265
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    const-string v2, "hm"

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const-string v1, "a"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method private onTimeChanged()V
    .locals 4

    .prologue
    .line 526
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 527
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/widget/TimePicker$OnTimeChangedListener;->onTimeChanged(Landroid/widget/TimePicker;II)V

    .line 531
    :cond_0
    return-void
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, #android:id@decrement#t

    const v2, #android:id@increment#t

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, #android:string@time_picker_increment_minute_button#t

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    const v1, #android:string@time_picker_decrement_minute_button#t

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, #android:string@time_picker_increment_hour_button#t

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const v1, #android:string@time_picker_decrement_hour_button#t

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, #android:string@time_picker_increment_set_pm_button#t

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    const v1, #android:string@time_picker_decrement_set_am_button#t

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/TimePickerSpinnerDelegate;->trySetContentDescription(Landroid/view/View;II)V

    :cond_0
    return-void
.end method

.method private setCurrentHour(Ljava/lang/Integer;Z)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;
    .param p2, "notifyTimeChanged"    # Z

    .prologue
    const/16 v1, 0xc

    .line 309
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 331
    :cond_0
    :goto_0
    return-void

    .line 312
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 314
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 315
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 316
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 317
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 325
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    .line 327
    :cond_3
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 328
    if-eqz p2, :cond_0

    .line 329
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0

    .line 320
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    .line 321
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method private setDividerText()V
    .locals 8

    .prologue
    const/4 v7, -0x1

    .line 280
    iget-boolean v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v5, :cond_1

    const-string v4, "Hm"

    .line 281
    .local v4, "skeleton":Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mCurrentLocale:Ljava/util/Locale;

    invoke-static {v5, v4}, Landroid/text/format/DateFormat;->getBestDateTimePattern(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "bestDateTimePattern":Ljava/lang/String;
    const/16 v5, 0x48

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 285
    .local v1, "hourIndex":I
    if-ne v1, v7, :cond_0

    .line 286
    const/16 v5, 0x68

    invoke-virtual {v0, v5}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 288
    :cond_0
    if-ne v1, v7, :cond_2

    .line 290
    const-string v3, ":"

    .line 299
    .local v3, "separatorText":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    return-void

    .line 280
    .end local v0    # "bestDateTimePattern":Ljava/lang/String;
    .end local v1    # "hourIndex":I
    .end local v3    # "separatorText":Ljava/lang/String;
    .end local v4    # "skeleton":Ljava/lang/String;
    :cond_1
    const-string v4, "hm"

    goto :goto_0

    .line 292
    .restart local v0    # "bestDateTimePattern":Ljava/lang/String;
    .restart local v1    # "hourIndex":I
    .restart local v4    # "skeleton":Ljava/lang/String;
    :cond_2
    const/16 v5, 0x6d

    add-int/lit8 v6, v1, 0x1

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 293
    .local v2, "minuteIndex":I
    if-ne v2, v7, :cond_3

    .line 294
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1

    .line 296
    .end local v3    # "separatorText":Ljava/lang/String;
    :cond_3
    add-int/lit8 v5, v1, 0x1

    invoke-virtual {v0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "separatorText":Ljava/lang/String;
    goto :goto_1
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 585
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 586
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 587
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 589
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 481
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 482
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v1, :cond_1

    .line 483
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPicker;->setVisibility(I)V

    .line 497
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/widget/TimePicker;->sendAccessibilityEvent(I)V

    .line 499
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isRomUI_v3()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 500
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-nez v1, :cond_5

    .line 501
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 502
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 503
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 512
    :cond_0
    :goto_1
    return-void

    .line 485
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 488
    :cond_2
    iget-boolean v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v3, :cond_3

    move v0, v1

    .line 489
    .local v0, "index":I
    :goto_2
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v3, :cond_4

    .line 490
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 491
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPicker;->setVisibility(I)V

    goto :goto_0

    .end local v0    # "index":I
    :cond_3
    move v0, v2

    .line 488
    goto :goto_2

    .line 493
    .restart local v0    # "index":I
    :cond_4
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    iget-object v4, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmStrings:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 494
    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 506
    .end local v0    # "index":I
    :cond_5
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 507
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmParent:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mListDivider:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    goto :goto_1
.end method

.method private updateHourControl()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 534
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 536
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x6b

    if-ne v0, v1, :cond_0

    .line 537
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 538
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 553
    :goto_0
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourWithTwoDigit:Z

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/widget/NumberPicker;->getTwoDigitFormatter()Landroid/widget/NumberPicker$Formatter;

    move-result-object v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/NumberPicker;->setFormatter(Landroid/widget/NumberPicker$Formatter;)V

    .line 554
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 541
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 545
    :cond_1
    iget-char v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourFormat:C

    const/16 v1, 0x4b

    if-ne v0, v1, :cond_2

    .line 546
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v2}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 547
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 549
    :cond_2
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 550
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    goto :goto_0

    .line 553
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 465
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 466
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 467
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 469
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 478
    :cond_0
    :goto_0
    return-void

    .line 470
    :cond_1
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 471
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 472
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 473
    :cond_2
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 474
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 475
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDelegator:Landroid/widget/TimePicker;

    invoke-virtual {v1}, Landroid/widget/TimePicker;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateMinuteControl()V
    .locals 2

    .prologue
    .line 557
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 558
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 562
    :goto_0
    return-void

    .line 560
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinnerInput:Landroid/widget/EditText;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setImeOptions(I)V

    goto :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 430
    invoke-virtual {p0, p1}, Landroid/widget/TimePickerSpinnerDelegate;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 431
    const/4 v0, 0x1

    return v0
.end method

.method public getBaseline()I
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getBaseline()I

    move-result v0

    return v0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 335
    iget-object v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    .line 336
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 341
    :goto_0
    return-object v1

    .line 338
    :cond_0
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 339
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 341
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0}, Landroid/widget/NumberPicker;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 378
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 413
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 414
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 451
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 452
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 456
    const-class v0, Landroid/widget/TimePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 457
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 436
    const/4 v0, 0x1

    .line 437
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 438
    or-int/lit16 v0, v0, 0x80

    .line 442
    :goto_0
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 443
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 444
    iget-object v2, p0, Landroid/widget/TimePickerSpinnerDelegate;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v2, v4, v5, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 446
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 447
    return-void

    .line 440
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 423
    move-object v0, p1

    check-cast v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    .line 424
    .local v0, "ss":Landroid/widget/TimePickerSpinnerDelegate$SavedState;
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(Ljava/lang/Integer;)V

    .line 425
    invoke-virtual {v0}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 426
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4
    .param p1, "superState"    # Landroid/os/Parcelable;

    .prologue
    .line 418
    new-instance v0, Landroid/widget/TimePickerSpinnerDelegate$SavedState;

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, p1, v1, v2, v3}, Landroid/widget/TimePickerSpinnerDelegate$SavedState;-><init>(Landroid/os/Parcelable;IILandroid/widget/TimePickerSpinnerDelegate$1;)V

    return-object v0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    .line 304
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 305
    return-void
.end method

.method public setCurrentLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 521
    invoke-super {p0, p1}, Landroid/widget/TimePicker$AbstractTimePickerDelegate;->setCurrentLocale(Ljava/util/Locale;)V

    .line 522
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mTempCalendar:Ljava/util/Calendar;

    .line 523
    return-void
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 347
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 351
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 388
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mMinuteSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 389
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 390
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mDivider:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 392
    :cond_0
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mHourSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 393
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    if-eqz v0, :cond_1

    .line 394
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmSpinner:Landroid/widget/NumberPicker;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPicker;->setEnabled(Z)V

    .line 398
    :goto_0
    iput-boolean p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIsEnabled:Z

    .line 399
    return-void

    .line 396
    :cond_1
    iget-object v0, p0, Landroid/widget/TimePickerSpinnerDelegate;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 361
    iget-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 374
    :goto_0
    return-void

    .line 365
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 367
    .local v0, "currentHour":I
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mIs24HourView:Z

    .line 368
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->getHourFormatData()V

    .line 369
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateHourControl()V

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Landroid/widget/TimePickerSpinnerDelegate;->setCurrentHour(Ljava/lang/Integer;Z)V

    .line 372
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateMinuteControl()V

    .line 373
    invoke-direct {p0}, Landroid/widget/TimePickerSpinnerDelegate;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/TimePicker$OnTimeChangedListener;

    .prologue
    .line 383
    iput-object p1, p0, Landroid/widget/TimePickerSpinnerDelegate;->mOnTimeChangedListener:Landroid/widget/TimePicker$OnTimeChangedListener;

    .line 384
    return-void
.end method
