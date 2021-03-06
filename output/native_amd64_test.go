// Code generated by Makefile, DO NOT EDIT.

/*
 * Copyright 2021 ByteDance Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package output

import (
	"testing"

	"github.com/stretchr/testify/require"
)


func TestMain(m *testing.M) {
	m.Run()
}

func Test__sum(t *testing.T) {
	var a = int64(1)
	var b = int64(-1)
	var c = __sum(a, b)
	require.Equal(t, a+b, c)
	t.Log(c)
}